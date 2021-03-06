'use strict'

var _ = require('lodash')
var async = require('async')
var React = require('react')
var ReactDOM = require('react-dom')
var Router = require('react-router')
var Link = Router.Link
var DocumentTitle = require('react-document-title')
var color = require('../../js/color')

var SVGCollection = require('./SVGCollection')

var color = require('../../js/color')
var htmlutil = require('../../js/htmlutil')

var reactable = require('reactable')
var Tr = reactable.Tr
var Td = reactable.Td
var Th = reactable.Th
var Thead = reactable.Thead
var Tbody = reactable.Tbody
var Table = reactable.Table

var AnnotatedGeneRow = React.createClass({

    propTypes: {
        
        data: React.PropTypes.object.isRequired,
        // termId: React.PropTypes.string.isRequired,

    },
    
    render: function() {
        
        var data = this.props.data;
        var desc = (data.gene.description || 'no description').replace(/\[[^\]]+\]/g, '');

        // console.log("pvalue", data.pvalue);
        
        return ( <tr className={this.props.num % 2 === 0 ? 'datarow evenrow' : 'datarow oddrow'}>
                 <td className='text'>
                 <Link className='nodecoration black' title={desc} to={`/gene/${data.gene.id}`}>
                 <SVGCollection.Rectangle className='tablerectangle' title={data.gene.biotype.replace(/_/g, ' ')} fill={color.biotype2color[data.gene.biotype] || color.colors.gnblack} />
                 {data.gene.name}
                 </Link>
                 </td>
                 <td className='text'>
                 <Link className='nodecoration black' title={desc} to={`/gene/${data.gene.name}`}>
                 <span>{desc}</span>
                 </Link>
                 </td>
                 {/*<td style={{textAlign: 'center'}}>TBA</td>*/}

                 {/* data.pvalue ?  <td style={{textAlign: 'center'}} dangerouslySetInnerHTML={{__html: htmlutil.pValueToReadable(data.pValue)}}></td> :  null */}
                 {/*<td style={{textAlign: 'center'}}>TBA</td>*/}
                 {/*<td style={{textAlign: 'center'}}><SVGCollection.Annotated /></td>*/}
                 {/*<td style={{textAlign: 'center'}}>
                 <a title={'Open network highlighting ' + data.gene.name} href={GN.urls.networkPage + '0!' + data.gene.name + '|' + this.props.termId + ',0!' + data.gene.name} target='_blank'>
                 <SVGCollection.NetworkIcon />
                 </a>
                 </td>*/}
                 </tr>
        )
    }
})

var PredictedGeneRow = React.createClass({

    propTypes: {
        data: React.PropTypes.object.isRequired,
        // termId: React.PropTypes.string.isRequired
    },
    
    render: function() {
        
        var data = this.props.data
        var desc = (data.gene.description || 'no description').replace(/\[[^\]]+\]/g, '')
        var pValue = data.pValue ? data.pValue : data.p
        var zScore = data.zScore ? data.zScore : data.z
        return ( <tr>
                 <td className='text'>
                 <Link className='nodecoration black' target='_blank' title={desc} to={`/gene/${data.gene.id}`}>
                 <SVGCollection.Rectangle className='tablerectangle' title={data.gene.biotype.replace(/_/g, ' ')} fill={color.biotype2color[data.gene.biotype] || color.colors.gnblack} />
                 <span>{data.gene.name}</span>
                 </Link>
                 </td>
                 <td className='text'>
                 <Link className='nodecoration black' target='_blank' title={desc} to={`/gene/${data.gene.name}`}>
                 <span>{desc}</span>
                 </Link>
                 </td>
                 <td style={{textAlign: 'center'}} dangerouslySetInnerHTML={{__html: htmlutil.pValueToReadable(pValue)}}></td>
                 <td style={{textAlign: 'center'}}>{zScore > 0 ? <SVGCollection.TriangleUp className='directiontriangleup' /> : <SVGCollection.TriangleDown className='directiontriangledown' />}</td>
                 <td style={{textAlign: 'center'}}>{data.annotated ? <SVGCollection.Annotated /> : <SVGCollection.NotAnnotated />}</td>
                 {/*<td style={{textAlign: 'center'}}>
                 <a title={'Open network ' + (data.annotated ? 'highlighting ' : 'with ') + data.gene.name} href={GN.urls.networkPage + '0!' + data.gene.name + '|' + this.props.termId + ',0!' + data.gene.name} target='_blank'>
                 <SVGCollection.NetworkIcon />
                 </a>
                 </td>*/}
                 </tr>
        )
    }
})

var GeneTable = React.createClass({

    propTypes: {
        // genes: React.PropTypes.array.isRequired,
        // type: React.Proptypes.string.isRequired
    },

    render: function() {
        var that = this
        var rows = null
        var termId = this.props.termId

        if (!this.props.genes && this.props.gpMessage){
            return (<div>{this.props.gpMessage}</div>)
        }

        if (this.props.type == 'prediction'){
            rows = _.map(this.props.genes, function(data, i) {
                return (<PredictedGeneRow data={data} termId={termId} key={data.gene.id} />)
            })
        } else {
            rows = _.map(this.props.genes, function(data, i) {
                return (<AnnotatedGeneRow data={data} termId={termId} key={data.gene.id} />)
            })
        }

        return (
                <div>
                    <table className='rowcolors table'>
                    <thead>
                        <tr>
                            <th className='tabletextheader' style={{width: '10%'}}>GENE</th>
                            <th className='tabletextheader' style={{width: '60%'}}>DESCRIPTION</th>
                            { this.props.type == 'prediction' ? <th>P-VALUE</th> : null}
                            { this.props.type == 'prediction' ? <th>DIRECTION</th> : null}
                            { this.props.type == 'prediction' ? <th>ANNOTATED</th> : null}
                        </tr>
                    </thead>
                    <tbody>
                        {rows}
                    </tbody>
                    </table>
                </div>
            )

        // return (
        //     <div>
        //         <Table className='table'>
        //         <Thead>
        //             <Th column="GENE"></Th>
        //             <Th column="DESCRIPTION"></Th>
        //             {this.props.type == 'prediction' ? <Th column="PVALUE"></Th> : <>}
        //         </Thead>
        //         </Table>
        //     </div>
        // )


        // return (
        //     <div>
        //         <table className='table'>
        //         <tbody>
        //         <tr>
        //           <th className='tabletextheader' style={{width: '10%'}}>GENE</th>
        //           <th className='tabletextheader' style={{width: '60%'}}>DESCRIPTION</th>
        //             { this.props.type == 'prediction' ? <th>P-VALUE</th> : null}
        //             { this.props.type == 'prediction' ? <th>DIRECTION</th> : null}
        //             { this.props.type == 'prediction' ? <th>ANNOTATED</th> : null}
        //           {/*<th>NETWORK</th>*/}
        //           </tr>
        //           {rows}
        //         </tbody>
        //         </table>
        //     </div>
        //     )
    }
})

module.exports = GeneTable
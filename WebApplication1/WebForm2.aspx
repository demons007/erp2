<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--tag for responsive page creation>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <title>XYZ Hotel</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.4.2/react.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.4.2/react-dom.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.38/browser.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
   
    <style type="text/css">
        #_psudo_head {
            width:100%;
            height:30px;
            background-color:blue;
        }
        #_psudo_body {
            width:100%;
            height:1000px;
            background-color:lavender;
            margin-top:10px;
        }
    </style>
     <script type="text/javascript">
            window.addEventListener("opacity",(evt) => {
                console.log(evt.detail.message+"hi");
                        console.log("i am");
            document.getElementById("_psudo_head").style.opacity=evt.detail.message;
            document.getElementById("_psudo_body").style.opacity=evt.detail.message;
            },false);
</script>
</head>
<body>
    <div id="_js_root_animation">

    </div>
    <div id="_psudo_head">

    </div>
    <div id="_psudo_body">

    </div>
    <script type="text/babel">

        class Spinner extends React.Component {
    constructor(props){
        super(props);
        this.state = {
        };
    }
    render(){
        return (
            <div className="loader loader--style5" title="4">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlnsXlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
        width="24px" height="30px" viewBox="0 0 24 30" style={{enableBackground:"new 0 0 50 50"}} xmlSpace="preserve">
          <rect x="0" y="0" width="4" height="20" fill="#333">
            <animateTransform attributeType="xml"
    attributeName="transform" type="translate"
    values="0 0; 0 20; 0 0"
    begin="0" dur="0.6s" repeatCount="indefinite" />
</rect>
<rect x="10" y="0" width="4" height="10" fill="#333">
  <animateTransform attributeType="xml"
    attributeName="transform" type="translate"
    values="0 0; 0 20; 0 0"
    begin="0.2s" dur="0.6s" repeatCount="indefinite" />
</rect>
<rect x="20" y="0" width="4" height="20" fill="#333">
  <animateTransform attributeType="xml"
    attributeName="transform" type="translate"
    values="0 0; 0 20; 0 0"
    begin="0.4s" dur="0.6s" repeatCount="indefinite" />
</rect>
</svg>
</div>
		 			)
		 		}
}


		 	class DotArray extends React.Component {
		 	    constructor(props){
		 			super(props);
		 	        this.state = {
		 	            max:["."]
		 	        };
		 	        this.componentDidMount=this.componentDidMount.bind(this);
		 	    }
		 	    componentDidMount(){
		 	        var x=this.state.max.length;
		 	        var IntervalOn=setInterval(
		 			()=>{
		 			    var z = this.state.max;
		 	        z.push(".");
		 	        if(z.length <= 9){
		 	            this.setState({

		 	                max:z
		 	            })
		 	        }
		 	        else
		 	        {
		 	            this.setState({

		 	                max : ["."]
		 	            })
		 	        }
		 	    },2);
		 	    sessionStorage.setItem("inti_lo",IntervalOn)
		 			
		 	}
render(){
    return (
        <div id="_max_dot" style={{display:"inline"}}>
{
    this.state.max.map( (a,b) =>{
        return (
            <span key={b}>{a}</span>
        )
} )
}
</div>
		 			)
}
}

            console.log(document.body)
		 	const sh="60px";
		 	const sw="100%";
		 	const ph={width:"100%",height:"20%",display:"flex",justifyContent:"flex-end",alignItems:"center"};
		 	const pw={width:"100%",height:"80%",display:"flex",justifyContent:"center",alignItems:"center"}
//console.log(`${sh} ${sw} lol`)
		 	
		 	class SvgContainer extends React.Component {
		 	    constructor(props){
		 			super(props);
		 	        this._unmount_me=this._unmount_me.bind(this);
		 	        this.componentWillUnmount=this.componentWillUnmount.bind(this);
		 	        this.componentWillMount=this.componentWillMount.bind(this);
		 	        this.state={
		 	            clH:this.props.Ch,
		 	            clW:this.props.Cw
		 	        };
		 	    }
		 	    componentWillMount(){
		 	        var opacityO = new CustomEvent(
                        "opacity", 
                        {
                            detail: {
                                message: "0.2",
                                time: new Date(),
                            },
                            bubbles: false,
                            cancelable: false
                        }
                        );

		 	        window.dispatchEvent(opacityO);
		 	    }
		 	    componentWillUnmount(){
		 	        console.log("llllllllll")
		 	        //document.getElementById("_head").style.opacity="1";
		 	        //document.getElementById("_head").style.opacity="1";
		 	        clearInterval(sessionStorage.getItem("inti_lo"));
		 	        console.log(document.getElementById("_psudo_head").style.opacity)
					
		 	    }
		 	    _unmount_me(evt){
		 	        evt.preventDefault();
		 	        evt.stopPropagation();
                    console.log("unm");
		 	        document.getElementById("_psudo_head").style.opacity="1";
		 	        document.getElementById("_psudo_body").style.opacity="1";
		 	        var opacity = new CustomEvent(
					"opacity", 
					{
					    detail: {
					        message: "1",
					        time: new Date(),
					    },
					    bubbles: false,
					    cancelable: false
					}
					);

		 	        window.dispatchEvent(opacity);
                    console.log("unmounting")
		 	        ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'))
		 	    }
		 	    render(){
		 	        return (
		 				<div id="_map_in_search" style={{width:this.state.clW,height:this.state.clH,position:"absolute",backgroundColor:"transparent",overflow:"hidden",zIndex:1}} ref={() => {console.log("plpo");
		 																
		 				}}>

		 				<div id="_table_p_head" style={ph} >
		 					<input type="image" src="Cancel.png" name="_bt_close_pop" id="_bt_close_pop" style={{width:"80px",height:"50%",fontSize:"25px"}} onClick={this._unmount_me} />
		 				</div>
		 				<div id="_table_p_body" style={pw} >
		 					<table style={{width:"20%",textAlign:"center"}}>
		 					<tr><td>
		 					<Spinner />
		 					
		 					</td></tr><tr><td>
		 					<div>
		 						<code style={{fontFamily:"cursive"}}><span><font size={5} style={{position: "absolute"}}>Please Wait Loading <DotArray /></font></span></code>
		 					</div></td>
		 					</tr>
		 					</table>
		 				</div>
		 					
		 				</div>
		 			)
}
}

        class PopupEach extends React.Component {
            constructor(props){
                super(props);
                this.state = {
                    name_u:"",
                    add_u:"",
                    ph_no:"",
                    chk_in:""
                };
                this.componentWillMount=this.componentWillMount.bind(this);
                this._xyz=this._xyz.bind(this);
                this._change_name=this._change_name.bind(this);
                this._change_add=this._change_add.bind(this);
                this._change_ph=this._change_ph.bind(this);
                this._fl_chng=this._fl_chng.bind(this);
                this._hh_chng_dt=this._hh_chng_dt.bind(this);
      
            }
            _hh_chng_dt(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        chk_in:evt.target.value
                    })
            }
            _fl_chng(evt){
                evt.preventDefault();
                evt.stopPropagation();
                evt.persist();
                console.log("hi");
                 var reader  = new FileReader();
                var file=evt.target.files[0];
                //console.log(file);
                 
                            //console.log(jsData);
  reader.onloadend = function () {
    $(() =>{
            var xc=reader.result;
            console.log("hi       "+typeof reader.result);
        let jsData=JSON.stringify({name:reader.result,f_name:file.name});
                 //let jsData=JSON.stringify({name:file,f_name:file.name});
            
        //console.log(formData)
                            console.log(jsData);
                        $.ajax({
            type: "POST",
            url: "WebForm2.aspx/OpenUriSaveIm",
            data:jsData,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
           
            error: function (response) {
               console.log(response);
            },
            async:true
        }).done((data) => {
                        sessionStorage.urlId=data.d;
                        console.log(sessionStorage.urlId);
                    });
                        });
  }
  reader.readAsDataURL(file);
            }
            _change_name(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        name_u:evt.target.value
                    });
            }
        _change_add(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        add_u:evt.target.value
                    });
            }
            _change_ph(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        ph_no:evt.target.value
                    });
            }
            _xyz(evt){
                evt.preventDefault();
                evt.stopPropagation();
                console.log("hi")
                $(() =>{
                 let jsData=JSON.stringify({name:this.state.name_u,add:this.state.add_u,phone:this.state.ph_no,chk_in:this.state.chk_in,id_uri:sessionStorage.urlId});
                            console.log(jsData);
                        $.ajax({
            type: "POST",
            url: "WebForm2.aspx/AddUser",
            data:jsData,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            
            error: function (response) {
               console.log(response);
            },
            async:true
        }).done((data) => {
                        //top.location.href='http://localhost:64593/WebForm2.aspx';
                            console.log(data.d);
                    });
                        });
                
            }
            componentWillMount(){
                var opacityO = new CustomEvent(
                        "opacity", 
                        {
                            detail: {
                                message: "0.1",
                                time: new Date(),
                            },
                            bubbles: false,
                            cancelable: false
                        }
                        );

		 	        window.dispatchEvent(opacityO);
            }
            render(){
                return (

                    <div id="_root_anim" style={{width:"98%",height:"1000px",position:"absolute",zIndex:"2"}}>
                        <div style={{width:"98%",height:"100%"}}>
                         <div style={{width:"100%",height:"50px",display:"block",marginTop:"15px"}}> 
                            <input type="text" style={{width:"50%",height:"30px"}} value={this.state.name_u} placeholder="name" onChange={this._change_name} />
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"15px"}}> 
                            <input type="text" style={{width:"50%",height:"30px"}} value={this.state.add_u} placeholder="address" onChange={this._change_add} />
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"15px"}}> 
                            <input type="text" style={{width:"50%",height:"30px"}} value={this.state.ph_no} placeholder="phone" onChange={this._change_ph} />
                        </div>
                        
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"15px"}}> 
                            <input type="datetime-local" style={{width:"50%",height:"30px"}} value={this.state.chk_in} onChange={this._hh_chng_dt} />
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"15px"}}> 
                            <input type="file" name="file" style={{width:"50%",height:"30px"}} onChange={this._fl_chng} />
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"15px"}}> 
                            <input type="button" style={{width:"50%",height:"30px"}} value="proceed" onClick={this._xyz} />
                        </div>
                        </div>
                    </div>
                )
            }
        }

        class BodyOfMain extends React.Component {
            constructor(props){
                super(props);
             this._ok_l_c=this._ok_l_c.bind(this);
            }
            _ok_l_c(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.render(<PopupEach />,document.getElementById('_js_root_animation'));
            }
            render(){
                return (
                    <div style={{width:"100%",height:"100%"}}>
                        <div style={{width:"100%",height:"25%"}}>
                            <div style={{width:"33%",display:"inline",float:"left",height:"100%"}}>
                                <a href="#" onClick={this._ok_l_c}>hi Admin
                                </a>
                            </div>
                            <div style={{width:"33%",display:"inline",float:"left",height:"100%"}}>
                                <a href="#" onClick={this._ok_l_c}>book room
                                </a>
                            </div>
                            <div style={{width:"33%",display:"inline",float:"left",height:"100%"}}>
                                <a href="#" onClick={this._ok_l_c}>add guest
                                </a>
                            </div>
                        </div>
                         <div style={{width:"100%",height:"35%"}}>
                        </div>
                        <div style={{width:"100%",height:"35%"}}>
                        </div>
                    </div>
                );
            }
        }
        ReactDOM.render(<BodyOfMain />,document.getElementById('_psudo_body'));
    </script>
</body>
</html>

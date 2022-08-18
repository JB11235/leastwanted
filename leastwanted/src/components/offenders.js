import React from "react";

function Offenders(props){
 return (
 	<div>
   {props.offenders.map((offender) => {
   	  return (
   	  	<div key={offender.id}>
   		<h2>{offender.name}</h2>
   		</div>
   		);
   })}
 </div>
 );
}

export default Offenders;

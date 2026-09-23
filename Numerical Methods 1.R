



Newton_Raphson=function(f,df,x,err){
x1=x-f(x)/df(x)
x1
d=data.frame("Xn"=x,"fxn"=f(x),"dfxn"=df(x),"Xn1"=x1,"fXn1"=f(x1))
while(abs(x-x1) > err){
  x=x1
  x1=x-f(x)/df(x)
  d=rbind(d,c(x,f(x),df(x),x1,f(x1)))
}
return (d)
}

f=function(x){x^3-2*x-5}
df=function(x){3*x^2-2}
x0=25

Newton_Raphson(f,df,x0,err=0.00001)

Regula_Falsi=function(a,b,f,err){
x=b-f(b)*(b-a)/(f(b)-f(a))
d2=data.frame("a"=a,"b"=b,"fa"=f(a),"fb"=f(b),"x"=x,"fx"=f(x))

while(abs(f(x))>err){
  if(f(x)*f(b)<0){
    a=x
  }else{b=x}
  x=b-f(b)*(b-a)/(f(b)-f(a))
  d2=rbind(d2,c(a,b,f(a),f(b),x,f(x)))
}
return(d2)
}

a=1
b=5
err=0.000001
f=function(x){x^3-2*x-5}
Regula_Falsi(a,b,f,err)


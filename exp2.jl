using PlotlyJS,DataFrames



tempos_metalica=[
0.531
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.530
0.529
0.529
0.529
0.530
0.530
0.530
0.530
0.529
0.530
0.530
0.530
0.529
0.530
0.530
0.530
0.530
0.530
]

df= histogram(
    x=tempos_metalica,
    xaxis=0.529:0.001:0.532
) 

layout = Layout(
    title="Tempos de queda da bola metalica na altura de 137.42 cm",
    xaxis=attr(dtick=0.001,tick0=0.001),
    yaxis=attr(dtick=5,tick0=0),
    xaxis_title="Tempo(s)",
    yaxis_title="Repetição",
    )
plot(df,layout)

    h=[133.18,108.910,72.280,53.740,17.340]
    t_2=[0.576,0.492,0.429,0.370,0.209].^2


df2 = scatter(y=t_2,x=h,name="Bola de 4,23cm",mode="markers")
df3 = scatter(y=[0.530],x=[137.42],name="Bola de 2cm",mode="markers")
A = [ones(5) h]
B =(A'* A)\(A't_2)
df4 = scatter(x=[0,140],y=B[1].+B[2].*[0,140],name="ajuste linear para a bola 4,23cm",mode="lines")
layout2 = Layout(title="Modelo linear Altura x Tempo",
                   xaxis_title="Altura(cm)",
                   yaxis_title="Tempo(s)",
                   xaxis=attr(dtick=20.,tick0=0.000),
                   yaxis=attr(dtick=0.05,tick0=0.000),
                   )
plot([df2,df3,df4],layout2)
B[1]
B[2]
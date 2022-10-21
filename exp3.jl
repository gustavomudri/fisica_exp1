using PlotlyJS,DataFrames

tempo_1=[
    0.00
    0.20
    0.35
    0.48
    0.60
    0.70
    0.79
    0.87
    0.95
    1.03
    1.10
    1.17
    1.24
    1.30
    1.36
    1.42
    1.48
    1.54
    1.59
    1.65
    1.70
    1.75
    1.80
    1.85
    1.90
    1.95
    1.99
    2.04
    2.08
    2.13
    2.17
    2.21
    2.26
    2.30
].^2
tempo_2 = [
    0.00
0.11
0.19
0.25
0.31
0.37
0.42
0.46
0.51
0.55
0.59
0.63
0.66
0.70
0.73
0.76
0.79
0.82
0.85
0.88
0.91
0.94
0.97
0.99
1.02
1.05
1.07
1.10
1.12
1.14
1.17
1.19
1.21
1.24
].^2

tempo_3 = 
[
    0.00
0.11
0.18
0.24
0.29
0.33
0.37
0.41
0.44
0.48
0.51
0.54
0.57
0.60
0.62
0.65
0.67
0.70
0.72
0.74
0.77
0.79
0.81
0.83
0.85
0.87
0.89
0.91
0.93
0.95
0.97
0.98
1.00
1.02
].^2
tempo_4=
[
    0.00
0.14
0.21
0.26
0.31
0.35
0.38
0.42
0.45
0.48
0.51
0.53
0.56
0.58
0.61
0.63
0.65
0.67
0.69
0.71
0.73
0.75
0.77
0.79
0.81
0.82
0.84
0.86
0.88
0.89
0.91
0.92
0.94
0.95
].^2
tempo_5 = [
    0.00
0.06
0.10
0.14
0.17
0.20
0.23
0.26
0.29
0.31
0.33
0.35
0.38
0.40
0.42
0.44
0.45
0.47
0.49
0.51
0.52
0.54
0.56
0.57
0.59
0.60
0.62
0.63
0.65
0.66
0.67
0.69
0.70
0.71
].^2
posicao_1=[
    0.02
    0.03
    0.05
    0.06
    0.08
    0.09
    0.11
    0.12
    0.14
    0.15
    0.16
    0.18
    0.20
    0.21
    0.22
    0.24
    0.26
    0.27
    0.29
    0.30
    0.32
    0.33
    0.35
    0.36
    0.37
    0.39
    0.40
    0.42
    0.44
    0.45
    0.46
    0.48
    0.50
    0.51
]
posicao_2=[
    0.02
    0.03
    0.05
    0.06
    0.08
    0.09
    0.11
    0.12
    0.14
    0.15
    0.16
    0.18
    0.20
    0.21
    0.22
    0.24
    0.26
    0.27
    0.29
    0.30
    0.32
    0.33
    0.35
    0.36
    0.37
    0.39
    0.40
    0.42
    0.44
    0.45
    0.46
    0.48
    0.50
    0.51
]
posicao_3=[
    0.02
    0.03
    0.05
    0.06
    0.08
    0.09
    0.11
    0.12
    0.14
    0.15
    0.16
    0.18
    0.20
    0.21
    0.22
    0.24
    0.26
    0.27
    0.29
    0.30
    0.32
    0.33
    0.35
    0.36
    0.37
    0.39
    0.40
    0.42
    0.44
    0.45
    0.46
    0.48
    0.50
    0.51
]
posicao_4=[
    0.02
    0.03
    0.05
    0.06
    0.08
    0.09
    0.11
    0.12
    0.14
    0.15
    0.16
    0.18
    0.20
    0.21
    0.22
    0.24
    0.26
    0.27
    0.29
    0.30
    0.32
    0.33
    0.35
    0.36
    0.37
    0.39
    0.40
    0.42
    0.44
    0.45
    0.46
    0.48
    0.50
    0.51
]
posicao_5=[
    0.02
    0.03
    0.05
    0.06
    0.08
    0.09
    0.11
    0.12
    0.14
    0.15
    0.16
    0.18
    0.20
    0.21
    0.22
    0.24
    0.26
    0.27
    0.29
    0.30
    0.32
    0.33
    0.35
    0.36
    0.37
    0.39
    0.40
    0.42
    0.44
    0.45
    0.46
    0.48
    0.50
    0.51
]
A1 = [ones(size(tempo_1)) tempo_1];
B1 =(A1'* A1)\(A1'posicao_1);
A2 = [ones(size(tempo_2)) tempo_2];
B2 =(A2'* A2)\(A2'posicao_2);
A3 = [ones(size(tempo_3)) tempo_3];
B3 =(A3'* A3)\(A3'posicao_3);
A4 = [ones(size(tempo_4)) tempo_4];
B4 =(A4'* A4)\(A4'posicao_4);
A5 = [ones(size(tempo_5)) tempo_5];
B5 =(A5'* A5)\(A5'posicao_5);
B1

df1= scatter(
    x=tempo_1,
    y=posicao_1,
    mode="markers",
    name="297.21",
    error_y=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    ),
    error_x=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    )
) 
df2= scatter(
    x=tempo_2,
    y=posicao_2,
    mode="markers",
    name="297",
    error_y=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    ),
    error_x=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    )
) 
df3= scatter(
    x=tempo_3,
    y=posicao_3,
    mode="markers",
    name="297",
    error_y=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    ),
    error_x=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    )
) 
df4= scatter(
    x=tempo_4,
    y=posicao_4,
    mode="markers",
    name="297",
    error_y=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    ),
    error_x=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    )
) 
df5= scatter(
    x=tempo_5,
    y=posicao_5,
    mode="markers",
    name="297",
    error_y=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    ),
    error_x=attr(
        type="constant", # value of error bar given as percentage of y value
        value=0.01,
        visible=true
    )
) 
ajuste_1 = scatter(
    x=[0,tempo_1[size(tempo_1,1)]],
    y=B1[1].+B1[2].*[0,tempo_1[size(tempo_1,1)]],
    name="ajuste da 1ºamostra",
    mode="lines"
)
ajuste_2 = scatter(
    x=[0,tempo_2[size(tempo_2,1)]],
    y=B2[1].+B2[2].*[0,tempo_2[size(tempo_2,1)]],
    name="ajuste da 2ºamostra",
    mode="lines"
)
ajuste_3 = scatter(
    x=[0,tempo_3[size(tempo_3,1)]],
    y=B3[1].+B3[2].*[0,tempo_3[size(tempo_3,1)]],
    name="ajuste da 3ºamostra",
    mode="lines"
)
ajuste_4 = scatter(
    x=[0,tempo_4[size(tempo_4,1)]],
    y=B4[1].+B4[2].*[0,tempo_4[size(tempo_4,1)]],
    name="ajuste da 4ºamostra",
    mode="lines"
)
tempo_5[size(tempo_5,1)]
ajuste_5 = scatter(
    x=[0,tempo_5[size(tempo_5,1)]],
    y=B5[1].+B5[2].*[0,tempo_5[size(tempo_5,1)]],
    name="ajuste da 5ºamostra",
    mode="lines"
)
layout1 = Layout(
    title="Posição x Tempo 297.21g no suporte",
    xaxis=attr(dtick=1,tick0=0),
    xaxis_title="Tempo(s)",
    yaxis_title="Posição(m)",
    legend=attr(x=0.83, y=0,bgcolor="transparent"),   
    )

plot([df1,df2,df3,df4,df5,ajuste_1,ajuste_2,ajuste_3,ajuste_4,ajuste_5],layout1)
print("coenficiente linear da amostra 1: ",B1[1])
print("coenficiente angular da amostra 1: ",B1[2])
print("coenficiente linear da amostra 2: ",B2[1])
print("coenficiente angular da amostra 2: ",B2[2])
print("coenficiente linear da amostra 3: ",B3[1])
print("coenficiente angular da amostra 3: ",B3[2])
print("coenficiente linear da amostra 4: ",B4[1])
print("coenficiente angular da amostra 4: ",B4[2])
print("coenficiente linear da amostra 5: ",B5[1])
print("coenficiente angular da amostra 5: ",B5[2])

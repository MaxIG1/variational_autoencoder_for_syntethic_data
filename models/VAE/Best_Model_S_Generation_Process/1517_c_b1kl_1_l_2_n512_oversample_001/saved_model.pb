ʗ
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
,
Exp
x"T
y"T"
Ttype:

2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02unknown8۲
�
!Adam/classification_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/classification_output/bias/v
�
5Adam/classification_output/bias/v/Read/ReadVariableOpReadVariableOp!Adam/classification_output/bias/v*
_output_shapes
:*
dtype0
�
#Adam/classification_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*4
shared_name%#Adam/classification_output/kernel/v
�
7Adam/classification_output/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/classification_output/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/cont_decoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/cont_decoder_output/bias/v
�
3Adam/cont_decoder_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/cont_decoder_output/bias/v*
_output_shapes
:*
dtype0
�
!Adam/cont_decoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*2
shared_name#!Adam/cont_decoder_output/kernel/v
�
5Adam/cont_decoder_output/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/cont_decoder_output/kernel/v*
_output_shapes
:	�*
dtype0
u
Adam/h5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/h5/bias/v
n
"Adam/h5/bias/v/Read/ReadVariableOpReadVariableOpAdam/h5/bias/v*
_output_shapes	
:�*
dtype0
~
Adam/h5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/h5/kernel/v
w
$Adam/h5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/h5/kernel/v* 
_output_shapes
:
��*
dtype0
}
Adam/batch1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/batch1/beta/v
v
&Adam/batch1/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch1/beta/v*
_output_shapes	
:�*
dtype0

Adam/batch1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/batch1/gamma/v
x
'Adam/batch1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batch1/gamma/v*
_output_shapes	
:�*
dtype0
u
Adam/h4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/h4/bias/v
n
"Adam/h4/bias/v/Read/ReadVariableOpReadVariableOpAdam/h4/bias/v*
_output_shapes	
:�*
dtype0
}
Adam/h4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_nameAdam/h4/kernel/v
v
$Adam/h4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/h4/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/z_log_var/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/z_log_var/bias/v
{
)Adam/z_log_var/bias/v/Read/ReadVariableOpReadVariableOpAdam/z_log_var/bias/v*
_output_shapes
:*
dtype0
�
Adam/z_log_var/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/z_log_var/kernel/v
�
+Adam/z_log_var/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/v*
_output_shapes
:	�*
dtype0
|
Adam/z_mean/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/z_mean/bias/v
u
&Adam/z_mean/bias/v/Read/ReadVariableOpReadVariableOpAdam/z_mean/bias/v*
_output_shapes
:*
dtype0
�
Adam/z_mean/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*%
shared_nameAdam/z_mean/kernel/v
~
(Adam/z_mean/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/v*
_output_shapes
:	�*
dtype0
u
Adam/h2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/h2/bias/v
n
"Adam/h2/bias/v/Read/ReadVariableOpReadVariableOpAdam/h2/bias/v*
_output_shapes	
:�*
dtype0
~
Adam/h2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/h2/kernel/v
w
$Adam/h2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/h2/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/batch1/beta/v_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/batch1/beta/v_1
z
(Adam/batch1/beta/v_1/Read/ReadVariableOpReadVariableOpAdam/batch1/beta/v_1*
_output_shapes	
:�*
dtype0
�
Adam/batch1/gamma/v_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/batch1/gamma/v_1
|
)Adam/batch1/gamma/v_1/Read/ReadVariableOpReadVariableOpAdam/batch1/gamma/v_1*
_output_shapes	
:�*
dtype0
u
Adam/h1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/h1/bias/v
n
"Adam/h1/bias/v/Read/ReadVariableOpReadVariableOpAdam/h1/bias/v*
_output_shapes	
:�*
dtype0
}
Adam/h1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_nameAdam/h1/kernel/v
v
$Adam/h1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/h1/kernel/v*
_output_shapes
:	�*
dtype0
�
!Adam/classification_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/classification_output/bias/m
�
5Adam/classification_output/bias/m/Read/ReadVariableOpReadVariableOp!Adam/classification_output/bias/m*
_output_shapes
:*
dtype0
�
#Adam/classification_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*4
shared_name%#Adam/classification_output/kernel/m
�
7Adam/classification_output/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/classification_output/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/cont_decoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/cont_decoder_output/bias/m
�
3Adam/cont_decoder_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/cont_decoder_output/bias/m*
_output_shapes
:*
dtype0
�
!Adam/cont_decoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*2
shared_name#!Adam/cont_decoder_output/kernel/m
�
5Adam/cont_decoder_output/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/cont_decoder_output/kernel/m*
_output_shapes
:	�*
dtype0
u
Adam/h5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/h5/bias/m
n
"Adam/h5/bias/m/Read/ReadVariableOpReadVariableOpAdam/h5/bias/m*
_output_shapes	
:�*
dtype0
~
Adam/h5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/h5/kernel/m
w
$Adam/h5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/h5/kernel/m* 
_output_shapes
:
��*
dtype0
}
Adam/batch1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/batch1/beta/m
v
&Adam/batch1/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch1/beta/m*
_output_shapes	
:�*
dtype0

Adam/batch1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/batch1/gamma/m
x
'Adam/batch1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batch1/gamma/m*
_output_shapes	
:�*
dtype0
u
Adam/h4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/h4/bias/m
n
"Adam/h4/bias/m/Read/ReadVariableOpReadVariableOpAdam/h4/bias/m*
_output_shapes	
:�*
dtype0
}
Adam/h4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_nameAdam/h4/kernel/m
v
$Adam/h4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/h4/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/z_log_var/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/z_log_var/bias/m
{
)Adam/z_log_var/bias/m/Read/ReadVariableOpReadVariableOpAdam/z_log_var/bias/m*
_output_shapes
:*
dtype0
�
Adam/z_log_var/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/z_log_var/kernel/m
�
+Adam/z_log_var/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/m*
_output_shapes
:	�*
dtype0
|
Adam/z_mean/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/z_mean/bias/m
u
&Adam/z_mean/bias/m/Read/ReadVariableOpReadVariableOpAdam/z_mean/bias/m*
_output_shapes
:*
dtype0
�
Adam/z_mean/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*%
shared_nameAdam/z_mean/kernel/m
~
(Adam/z_mean/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/m*
_output_shapes
:	�*
dtype0
u
Adam/h2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/h2/bias/m
n
"Adam/h2/bias/m/Read/ReadVariableOpReadVariableOpAdam/h2/bias/m*
_output_shapes	
:�*
dtype0
~
Adam/h2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/h2/kernel/m
w
$Adam/h2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/h2/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/batch1/beta/m_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/batch1/beta/m_1
z
(Adam/batch1/beta/m_1/Read/ReadVariableOpReadVariableOpAdam/batch1/beta/m_1*
_output_shapes	
:�*
dtype0
�
Adam/batch1/gamma/m_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/batch1/gamma/m_1
|
)Adam/batch1/gamma/m_1/Read/ReadVariableOpReadVariableOpAdam/batch1/gamma/m_1*
_output_shapes	
:�*
dtype0
u
Adam/h1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/h1/bias/m
n
"Adam/h1/bias/m/Read/ReadVariableOpReadVariableOpAdam/h1/bias/m*
_output_shapes	
:�*
dtype0
}
Adam/h1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_nameAdam/h1/kernel/m
v
$Adam/h1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/h1/kernel/m*
_output_shapes
:	�*
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
b
total_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_5
[
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_output_shapes
: *
dtype0
b
count_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_6
[
count_6/Read/ReadVariableOpReadVariableOpcount_6*
_output_shapes
: *
dtype0
b
total_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_6
[
total_6/Read/ReadVariableOpReadVariableOptotal_6*
_output_shapes
: *
dtype0
b
count_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_7
[
count_7/Read/ReadVariableOpReadVariableOpcount_7*
_output_shapes
: *
dtype0
b
total_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_7
[
total_7/Read/ReadVariableOpReadVariableOptotal_7*
_output_shapes
: *
dtype0
b
count_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_8
[
count_8/Read/ReadVariableOpReadVariableOpcount_8*
_output_shapes
: *
dtype0
b
total_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_8
[
total_8/Read/ReadVariableOpReadVariableOptotal_8*
_output_shapes
: *
dtype0
b
count_9VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_9
[
count_9/Read/ReadVariableOpReadVariableOpcount_9*
_output_shapes
: *
dtype0
b
total_9VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_9
[
total_9/Read/ReadVariableOpReadVariableOptotal_9*
_output_shapes
: *
dtype0
d
count_10VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
count_10
]
count_10/Read/ReadVariableOpReadVariableOpcount_10*
_output_shapes
: *
dtype0
d
total_10VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
total_10
]
total_10/Read/ReadVariableOpReadVariableOptotal_10*
_output_shapes
: *
dtype0
d
count_11VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
count_11
]
count_11/Read/ReadVariableOpReadVariableOpcount_11*
_output_shapes
: *
dtype0
d
total_11VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
total_11
]
total_11/Read/ReadVariableOpReadVariableOptotal_11*
_output_shapes
: *
dtype0
d
count_12VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
count_12
]
count_12/Read/ReadVariableOpReadVariableOpcount_12*
_output_shapes
: *
dtype0
d
total_12VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
total_12
]
total_12/Read/ReadVariableOpReadVariableOptotal_12*
_output_shapes
: *
dtype0
d
count_13VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
count_13
]
count_13/Read/ReadVariableOpReadVariableOpcount_13*
_output_shapes
: *
dtype0
d
total_13VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
total_13
]
total_13/Read/ReadVariableOpReadVariableOptotal_13*
_output_shapes
: *
dtype0
d
count_14VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
count_14
]
count_14/Read/ReadVariableOpReadVariableOpcount_14*
_output_shapes
: *
dtype0
d
total_14VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
total_14
]
total_14/Read/ReadVariableOpReadVariableOptotal_14*
_output_shapes
: *
dtype0
�
classification_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameclassification_output/bias
�
.classification_output/bias/Read/ReadVariableOpReadVariableOpclassification_output/bias*
_output_shapes
:*
dtype0
�
classification_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nameclassification_output/kernel
�
0classification_output/kernel/Read/ReadVariableOpReadVariableOpclassification_output/kernel*
_output_shapes
:	�*
dtype0
�
cont_decoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecont_decoder_output/bias
�
,cont_decoder_output/bias/Read/ReadVariableOpReadVariableOpcont_decoder_output/bias*
_output_shapes
:*
dtype0
�
cont_decoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_namecont_decoder_output/kernel
�
.cont_decoder_output/kernel/Read/ReadVariableOpReadVariableOpcont_decoder_output/kernel*
_output_shapes
:	�*
dtype0
g
h5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	h5/bias
`
h5/bias/Read/ReadVariableOpReadVariableOph5/bias*
_output_shapes	
:�*
dtype0
p
	h5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_name	h5/kernel
i
h5/kernel/Read/ReadVariableOpReadVariableOp	h5/kernel* 
_output_shapes
:
��*
dtype0
�
batch1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_namebatch1/moving_variance
~
*batch1/moving_variance/Read/ReadVariableOpReadVariableOpbatch1/moving_variance*
_output_shapes	
:�*
dtype0
}
batch1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namebatch1/moving_mean
v
&batch1/moving_mean/Read/ReadVariableOpReadVariableOpbatch1/moving_mean*
_output_shapes	
:�*
dtype0
o
batch1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namebatch1/beta
h
batch1/beta/Read/ReadVariableOpReadVariableOpbatch1/beta*
_output_shapes	
:�*
dtype0
q
batch1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namebatch1/gamma
j
 batch1/gamma/Read/ReadVariableOpReadVariableOpbatch1/gamma*
_output_shapes	
:�*
dtype0
g
h4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	h4/bias
`
h4/bias/Read/ReadVariableOpReadVariableOph4/bias*
_output_shapes	
:�*
dtype0
o
	h4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_name	h4/kernel
h
h4/kernel/Read/ReadVariableOpReadVariableOp	h4/kernel*
_output_shapes
:	�*
dtype0
t
z_log_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namez_log_var/bias
m
"z_log_var/bias/Read/ReadVariableOpReadVariableOpz_log_var/bias*
_output_shapes
:*
dtype0
}
z_log_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_namez_log_var/kernel
v
$z_log_var/kernel/Read/ReadVariableOpReadVariableOpz_log_var/kernel*
_output_shapes
:	�*
dtype0
n
z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namez_mean/bias
g
z_mean/bias/Read/ReadVariableOpReadVariableOpz_mean/bias*
_output_shapes
:*
dtype0
w
z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namez_mean/kernel
p
!z_mean/kernel/Read/ReadVariableOpReadVariableOpz_mean/kernel*
_output_shapes
:	�*
dtype0
g
h2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	h2/bias
`
h2/bias/Read/ReadVariableOpReadVariableOph2/bias*
_output_shapes	
:�*
dtype0
p
	h2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_name	h2/kernel
i
h2/kernel/Read/ReadVariableOpReadVariableOp	h2/kernel* 
_output_shapes
:
��*
dtype0
�
batch1/moving_variance_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_namebatch1/moving_variance_1
�
,batch1/moving_variance_1/Read/ReadVariableOpReadVariableOpbatch1/moving_variance_1*
_output_shapes	
:�*
dtype0
�
batch1/moving_mean_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_namebatch1/moving_mean_1
z
(batch1/moving_mean_1/Read/ReadVariableOpReadVariableOpbatch1/moving_mean_1*
_output_shapes	
:�*
dtype0
s
batch1/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namebatch1/beta_1
l
!batch1/beta_1/Read/ReadVariableOpReadVariableOpbatch1/beta_1*
_output_shapes	
:�*
dtype0
u
batch1/gamma_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namebatch1/gamma_1
n
"batch1/gamma_1/Read/ReadVariableOpReadVariableOpbatch1/gamma_1*
_output_shapes	
:�*
dtype0
g
h1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	h1/bias
`
h1/bias/Read/ReadVariableOpReadVariableOph1/bias*
_output_shapes	
:�*
dtype0
o
	h1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_name	h1/kernel
h
h1/kernel/Read/ReadVariableOpReadVariableOp	h1/kernel*
_output_shapes
:	�*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1	h1/kernelh1/biasbatch1/moving_variance_1batch1/gamma_1batch1/moving_mean_1batch1/beta_1	h2/kernelh2/biasz_mean/kernelz_mean/biasz_log_var/kernelz_log_var/bias	h4/kernelh4/biasbatch1/moving_variancebatch1/gammabatch1/moving_meanbatch1/beta	h5/kernelh5/biasclassification_output/kernelclassification_output/biascont_decoder_output/kernelcont_decoder_output/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_3330748

NoOpNoOp
̸
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B�
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

total_loss_tracker
reconstruction_loss_tracker
kl_loss_tracker
%!reconstruction_loss_class_tracker
mean_abs_diff_cont_tracker
mean_abs_diff_class_tracker
mean_binary_tracker
kl_div_tracker
total_loss_tracker_sample
&"reconstruction_loss_tracker_sample
,(reconstruction_loss_class_tracker_sample
%!mean_abs_diff_cont_tracker_sample
&"mean_abs_diff_class_tracker_sample
mean_binary_tracker_sample
kl_div_tracker_sample
	optimizer
loss

signatures*
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53*
�
0
1
2
3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
.14
/15
016
117
218
319*
* 
�
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_3* 
6
[trace_0
\trace_1
]trace_2
^trace_3* 
* 
�
_layer-0
`layer_with_weights-0
`layer-1
alayer_with_weights-1
alayer-2
blayer_with_weights-2
blayer-3
clayer-4
dlayer-5
elayer_with_weights-3
elayer-6
flayer_with_weights-4
flayer-7
glayer-8
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses*
�
nlayer-0
olayer_with_weights-0
olayer-1
player_with_weights-1
player-2
qlayer_with_weights-2
qlayer-3
rlayer_with_weights-3
rlayer-4
slayer_with_weights-4
slayer-5
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses*
8
z	variables
{	keras_api
	4total
	5count*
8
|	variables
}	keras_api
	6total
	7count*
8
~	variables
	keras_api
	8total
	9count*
:
�	variables
�	keras_api
	:total
	;count*
:
�	variables
�	keras_api
	<total
	=count*
:
�	variables
�	keras_api
	>total
	?count*
:
�	variables
�	keras_api
	@total
	Acount*
:
�	variables
�	keras_api
	Btotal
	Ccount*
:
�	variables
�	keras_api
	Dtotal
	Ecount*
:
�	variables
�	keras_api
	Ftotal
	Gcount*
:
�	variables
�	keras_api
	Htotal
	Icount*
:
�	variables
�	keras_api
	Jtotal
	Kcount*
:
�	variables
�	keras_api
	Ltotal
	Mcount*
:
�	variables
�	keras_api
	Ntotal
	Ocount*
:
�	variables
�	keras_api
	Ptotal
	Qcount*
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem�m�m�m�"m�#m�$m�%m�&m�'m�(m�)m�*m�+m�.m�/m�0m�1m�2m�3m�v�v�v�v�"v�#v�$v�%v�&v�'v�(v�)v�*v�+v�.v�/v�0v�1v�2v�3v�*
* 

�serving_default* 
IC
VARIABLE_VALUE	h1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
GA
VARIABLE_VALUEh1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEbatch1/gamma_1&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEbatch1/beta_1&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEbatch1/moving_mean_1&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEbatch1/moving_variance_1&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE	h2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
GA
VARIABLE_VALUEh2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEz_mean/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEz_mean/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEz_log_var/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEz_log_var/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE	h4/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEh4/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEbatch1/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEbatch1/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEbatch1/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEbatch1/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE	h5/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEh5/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEcont_decoder_output/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEcont_decoder_output/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEclassification_output/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEclassification_output/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_14'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_14'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_13'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_13'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_12'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_12'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_11'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_11'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_10'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_10'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_9'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_9'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_8'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_8'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_7'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_7'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_6'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_6'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_5'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_5'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_4'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_4'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_3'variables/46/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_3'variables/47/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_2'variables/48/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_2'variables/49/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_1'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_1'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
F@
VARIABLE_VALUEtotal'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
F@
VARIABLE_VALUEcount'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
�
 0
!1
,2
-3
44
55
66
77
88
99
:10
;11
<12
=13
>14
?15
@16
A17
B18
C19
D20
E21
F22
G23
H24
I25
J26
K27
L28
M29
N30
O31
P32
Q33*

0
	1*
r

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14*
* 
�


total_loss
reconstruction_loss
kl_loss
reconstruction_loss_class
mean_abs_diff_cont
mean_abs_diff_class
mean_binary_value
kl_divergence
total_loss_sample
reconstruction_loss_sample
$ reconstruction_loss_class_sample
mean_abs_diff_cont_sample
mean_abs_diff_class_sample
mean_binary_value_sample
kl_divergence_sample*
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
 moving_mean
!moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

"kernel
#bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

$kernel
%bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

&kernel
'bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
Z
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11*
J
0
1
2
3
"4
#5
$6
%7
&8
'9*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

(kernel
)bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	*gamma
+beta
,moving_mean
-moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

.kernel
/bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

0kernel
1bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

2kernel
3bias*
Z
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311*
J
(0
)1
*2
+3
.4
/5
06
17
28
39*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 

40
51*

z	variables*

60
71*

|	variables*

80
91*

~	variables*

:0
;1*

�	variables*

<0
=1*

�	variables*

>0
?1*

�	variables*

@0
A1*

�	variables*

B0
C1*

�	variables*

D0
E1*

�	variables*

F0
G1*

�	variables*

H0
I1*

�	variables*

J0
K1*

�	variables*

L0
M1*

�	variables*

N0
O1*

�	variables*

P0
Q1*

�	variables*
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
 
0
1
 2
!3*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

"0
#1*

"0
#1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

$0
%1*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

&0
'1*

&0
'1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

 0
!1*
C
_0
`1
a2
b3
c4
d5
e6
f7
g8*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

(0
)1*

(0
)1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
 
*0
+1
,2
-3*

*0
+1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

.0
/1*

.0
/1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

00
11*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

20
31*

20
31*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

,0
-1*
.
n0
o1
p2
q3
r4
s5*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

 0
!1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

,0
-1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
lf
VARIABLE_VALUEAdam/h1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/h1/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/batch1/gamma/m_1Bvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/batch1/beta/m_1Bvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEAdam/h2/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/h2/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/z_mean/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/z_mean/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/z_log_var/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/z_log_var/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/h4/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/h4/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/batch1/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/batch1/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/h5/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/h5/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/cont_decoder_output/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/cont_decoder_output/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE#Adam/classification_output/kernel/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/classification_output/bias/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEAdam/h1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/h1/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/batch1/gamma/v_1Bvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/batch1/beta/v_1Bvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEAdam/h2/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/h2/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/z_mean/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/z_mean/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/z_log_var/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/z_log_var/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/h4/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/h4/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/batch1/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/batch1/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/h5/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/h5/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/cont_decoder_output/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/cont_decoder_output/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE#Adam/classification_output/kernel/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/classification_output/bias/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameh1/kernel/Read/ReadVariableOph1/bias/Read/ReadVariableOp"batch1/gamma_1/Read/ReadVariableOp!batch1/beta_1/Read/ReadVariableOp(batch1/moving_mean_1/Read/ReadVariableOp,batch1/moving_variance_1/Read/ReadVariableOph2/kernel/Read/ReadVariableOph2/bias/Read/ReadVariableOp!z_mean/kernel/Read/ReadVariableOpz_mean/bias/Read/ReadVariableOp$z_log_var/kernel/Read/ReadVariableOp"z_log_var/bias/Read/ReadVariableOph4/kernel/Read/ReadVariableOph4/bias/Read/ReadVariableOp batch1/gamma/Read/ReadVariableOpbatch1/beta/Read/ReadVariableOp&batch1/moving_mean/Read/ReadVariableOp*batch1/moving_variance/Read/ReadVariableOph5/kernel/Read/ReadVariableOph5/bias/Read/ReadVariableOp.cont_decoder_output/kernel/Read/ReadVariableOp,cont_decoder_output/bias/Read/ReadVariableOp0classification_output/kernel/Read/ReadVariableOp.classification_output/bias/Read/ReadVariableOptotal_14/Read/ReadVariableOpcount_14/Read/ReadVariableOptotal_13/Read/ReadVariableOpcount_13/Read/ReadVariableOptotal_12/Read/ReadVariableOpcount_12/Read/ReadVariableOptotal_11/Read/ReadVariableOpcount_11/Read/ReadVariableOptotal_10/Read/ReadVariableOpcount_10/Read/ReadVariableOptotal_9/Read/ReadVariableOpcount_9/Read/ReadVariableOptotal_8/Read/ReadVariableOpcount_8/Read/ReadVariableOptotal_7/Read/ReadVariableOpcount_7/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp$Adam/h1/kernel/m/Read/ReadVariableOp"Adam/h1/bias/m/Read/ReadVariableOp)Adam/batch1/gamma/m_1/Read/ReadVariableOp(Adam/batch1/beta/m_1/Read/ReadVariableOp$Adam/h2/kernel/m/Read/ReadVariableOp"Adam/h2/bias/m/Read/ReadVariableOp(Adam/z_mean/kernel/m/Read/ReadVariableOp&Adam/z_mean/bias/m/Read/ReadVariableOp+Adam/z_log_var/kernel/m/Read/ReadVariableOp)Adam/z_log_var/bias/m/Read/ReadVariableOp$Adam/h4/kernel/m/Read/ReadVariableOp"Adam/h4/bias/m/Read/ReadVariableOp'Adam/batch1/gamma/m/Read/ReadVariableOp&Adam/batch1/beta/m/Read/ReadVariableOp$Adam/h5/kernel/m/Read/ReadVariableOp"Adam/h5/bias/m/Read/ReadVariableOp5Adam/cont_decoder_output/kernel/m/Read/ReadVariableOp3Adam/cont_decoder_output/bias/m/Read/ReadVariableOp7Adam/classification_output/kernel/m/Read/ReadVariableOp5Adam/classification_output/bias/m/Read/ReadVariableOp$Adam/h1/kernel/v/Read/ReadVariableOp"Adam/h1/bias/v/Read/ReadVariableOp)Adam/batch1/gamma/v_1/Read/ReadVariableOp(Adam/batch1/beta/v_1/Read/ReadVariableOp$Adam/h2/kernel/v/Read/ReadVariableOp"Adam/h2/bias/v/Read/ReadVariableOp(Adam/z_mean/kernel/v/Read/ReadVariableOp&Adam/z_mean/bias/v/Read/ReadVariableOp+Adam/z_log_var/kernel/v/Read/ReadVariableOp)Adam/z_log_var/bias/v/Read/ReadVariableOp$Adam/h4/kernel/v/Read/ReadVariableOp"Adam/h4/bias/v/Read/ReadVariableOp'Adam/batch1/gamma/v/Read/ReadVariableOp&Adam/batch1/beta/v/Read/ReadVariableOp$Adam/h5/kernel/v/Read/ReadVariableOp"Adam/h5/bias/v/Read/ReadVariableOp5Adam/cont_decoder_output/kernel/v/Read/ReadVariableOp3Adam/cont_decoder_output/bias/v/Read/ReadVariableOp7Adam/classification_output/kernel/v/Read/ReadVariableOp5Adam/classification_output/bias/v/Read/ReadVariableOpConst*p
Tini
g2e	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_save_3332252
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	h1/kernelh1/biasbatch1/gamma_1batch1/beta_1batch1/moving_mean_1batch1/moving_variance_1	h2/kernelh2/biasz_mean/kernelz_mean/biasz_log_var/kernelz_log_var/bias	h4/kernelh4/biasbatch1/gammabatch1/betabatch1/moving_meanbatch1/moving_variance	h5/kernelh5/biascont_decoder_output/kernelcont_decoder_output/biasclassification_output/kernelclassification_output/biastotal_14count_14total_13count_13total_12count_12total_11count_11total_10count_10total_9count_9total_8count_8total_7count_7total_6count_6total_5count_5total_4count_4total_3count_3total_2count_2total_1count_1totalcount	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/h1/kernel/mAdam/h1/bias/mAdam/batch1/gamma/m_1Adam/batch1/beta/m_1Adam/h2/kernel/mAdam/h2/bias/mAdam/z_mean/kernel/mAdam/z_mean/bias/mAdam/z_log_var/kernel/mAdam/z_log_var/bias/mAdam/h4/kernel/mAdam/h4/bias/mAdam/batch1/gamma/mAdam/batch1/beta/mAdam/h5/kernel/mAdam/h5/bias/m!Adam/cont_decoder_output/kernel/mAdam/cont_decoder_output/bias/m#Adam/classification_output/kernel/m!Adam/classification_output/bias/mAdam/h1/kernel/vAdam/h1/bias/vAdam/batch1/gamma/v_1Adam/batch1/beta/v_1Adam/h2/kernel/vAdam/h2/bias/vAdam/z_mean/kernel/vAdam/z_mean/bias/vAdam/z_log_var/kernel/vAdam/z_log_var/bias/vAdam/h4/kernel/vAdam/h4/bias/vAdam/batch1/gamma/vAdam/batch1/beta/vAdam/h5/kernel/vAdam/h5/bias/v!Adam/cont_decoder_output/kernel/vAdam/cont_decoder_output/bias/v#Adam/classification_output/kernel/v!Adam/classification_output/bias/v*o
Tinh
f2d*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__traced_restore_3332559��
�
�
$__inference_h5_layer_call_fn_3331881

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h5_layer_call_and_return_conditional_losses_3329926p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_vae_3_layer_call_and_return_conditional_losses_3330685
input_1"
encoder_3330630:	�
encoder_3330632:	�
encoder_3330634:	�
encoder_3330636:	�
encoder_3330638:	�
encoder_3330640:	�#
encoder_3330642:
��
encoder_3330644:	�"
encoder_3330646:	�
encoder_3330648:"
encoder_3330650:	�
encoder_3330652:"
decoder_3330657:	�
decoder_3330659:	�
decoder_3330661:	�
decoder_3330663:	�
decoder_3330665:	�
decoder_3330667:	�#
decoder_3330669:
��
decoder_3330671:	�"
decoder_3330673:	�
decoder_3330675:"
decoder_3330677:	�
decoder_3330679:
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_3330630encoder_3330632encoder_3330634encoder_3330636encoder_3330638encoder_3330640encoder_3330642encoder_3330644encoder_3330646encoder_3330648encoder_3330650encoder_3330652*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_3329660�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2decoder_3330657decoder_3330659decoder_3330661decoder_3330663decoder_3330665decoder_3330667decoder_3330669decoder_3330671decoder_3330673decoder_3330675decoder_3330677decoder_3330679*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_3330103w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������y

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
r
E__inference_Sampling_layer_call_and_return_conditional_losses_3329466

inputs
inputs_1
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed���)*
seed2����
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:���������|
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:���������E
ExpExpmul:z:0*
T0*'
_output_shapes
:���������Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:���������Q
addAddV2inputs	mul_1:z:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
F__inference_z_log_var_layer_call_and_return_conditional_losses_3331740

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
?__inference_h5_layer_call_and_return_conditional_losses_3331892

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�N
�

D__inference_decoder_layer_call_and_return_conditional_losses_3331530

inputs4
!h4_matmul_readvariableop_resource:	�1
"h4_biasadd_readvariableop_resource:	�=
.batch1_assignmovingavg_readvariableop_resource:	�?
0batch1_assignmovingavg_1_readvariableop_resource:	�;
,batch1_batchnorm_mul_readvariableop_resource:	�7
(batch1_batchnorm_readvariableop_resource:	�5
!h5_matmul_readvariableop_resource:
��1
"h5_biasadd_readvariableop_resource:	�G
4classification_output_matmul_readvariableop_resource:	�C
5classification_output_biasadd_readvariableop_resource:E
2cont_decoder_output_matmul_readvariableop_resource:	�A
3cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1��batch1/AssignMovingAvg�%batch1/AssignMovingAvg/ReadVariableOp�batch1/AssignMovingAvg_1�'batch1/AssignMovingAvg_1/ReadVariableOp�batch1/batchnorm/ReadVariableOp�#batch1/batchnorm/mul/ReadVariableOp�,classification_output/BiasAdd/ReadVariableOp�+classification_output/MatMul/ReadVariableOp�*cont_decoder_output/BiasAdd/ReadVariableOp�)cont_decoder_output/MatMul/ReadVariableOp�h4/BiasAdd/ReadVariableOp�h4/MatMul/ReadVariableOp�h5/BiasAdd/ReadVariableOp�h5/MatMul/ReadVariableOp{
h4/MatMul/ReadVariableOpReadVariableOp!h4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0p
	h4/MatMulMatMulinputs h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
h4/BiasAdd/ReadVariableOpReadVariableOp"h4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�

h4/BiasAddBiasAddh4/MatMul:product:0!h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
h4/ReluReluh4/BiasAdd:output:0*
T0*(
_output_shapes
:����������o
%batch1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
batch1/moments/meanMeanh4/Relu:activations:0.batch1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(s
batch1/moments/StopGradientStopGradientbatch1/moments/mean:output:0*
T0*
_output_shapes
:	��
 batch1/moments/SquaredDifferenceSquaredDifferenceh4/Relu:activations:0$batch1/moments/StopGradient:output:0*
T0*(
_output_shapes
:����������s
)batch1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
batch1/moments/varianceMean$batch1/moments/SquaredDifference:z:02batch1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(|
batch1/moments/SqueezeSqueezebatch1/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
batch1/moments/Squeeze_1Squeeze batch1/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 a
batch1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
%batch1/AssignMovingAvg/ReadVariableOpReadVariableOp.batch1_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/AssignMovingAvg/subSub-batch1/AssignMovingAvg/ReadVariableOp:value:0batch1/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
batch1/AssignMovingAvg/mulMulbatch1/AssignMovingAvg/sub:z:0%batch1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
batch1/AssignMovingAvgAssignSubVariableOp.batch1_assignmovingavg_readvariableop_resourcebatch1/AssignMovingAvg/mul:z:0&^batch1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0c
batch1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
'batch1/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/AssignMovingAvg_1/subSub/batch1/AssignMovingAvg_1/ReadVariableOp:value:0!batch1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
batch1/AssignMovingAvg_1/mulMul batch1/AssignMovingAvg_1/sub:z:0'batch1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
batch1/AssignMovingAvg_1AssignSubVariableOp0batch1_assignmovingavg_1_readvariableop_resource batch1/AssignMovingAvg_1/mul:z:0(^batch1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0[
batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batch1/batchnorm/addAddV2!batch1/moments/Squeeze_1:output:0batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�_
batch1/batchnorm/RsqrtRsqrtbatch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
#batch1/batchnorm/mul/ReadVariableOpReadVariableOp,batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/mulMulbatch1/batchnorm/Rsqrt:y:0+batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
batch1/batchnorm/mul_1Mulh4/Relu:activations:0batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:����������~
batch1/batchnorm/mul_2Mulbatch1/moments/Squeeze:output:0batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
batch1/batchnorm/ReadVariableOpReadVariableOp(batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/subSub'batch1/batchnorm/ReadVariableOp:value:0batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
batch1/batchnorm/add_1AddV2batch1/batchnorm/mul_1:z:0batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:����������|
h5/MatMul/ReadVariableOpReadVariableOp!h5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
	h5/MatMulMatMulbatch1/batchnorm/add_1:z:0 h5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
h5/BiasAdd/ReadVariableOpReadVariableOp"h5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�

h5/BiasAddBiasAddh5/MatMul:product:0!h5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
h5/ReluReluh5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
+classification_output/MatMul/ReadVariableOpReadVariableOp4classification_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
classification_output/MatMulMatMulh5/Relu:activations:03classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,classification_output/BiasAdd/ReadVariableOpReadVariableOp5classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
classification_output/BiasAddBiasAdd&classification_output/MatMul:product:04classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
classification_output/SigmoidSigmoid&classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:����������
)cont_decoder_output/MatMul/ReadVariableOpReadVariableOp2cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
cont_decoder_output/MatMulMatMulh5/Relu:activations:01cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOp3cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
cont_decoder_output/BiasAddBiasAdd$cont_decoder_output/MatMul:product:02cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������r

Identity_1Identity!classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batch1/AssignMovingAvg&^batch1/AssignMovingAvg/ReadVariableOp^batch1/AssignMovingAvg_1(^batch1/AssignMovingAvg_1/ReadVariableOp ^batch1/batchnorm/ReadVariableOp$^batch1/batchnorm/mul/ReadVariableOp-^classification_output/BiasAdd/ReadVariableOp,^classification_output/MatMul/ReadVariableOp+^cont_decoder_output/BiasAdd/ReadVariableOp*^cont_decoder_output/MatMul/ReadVariableOp^h4/BiasAdd/ReadVariableOp^h4/MatMul/ReadVariableOp^h5/BiasAdd/ReadVariableOp^h5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 20
batch1/AssignMovingAvgbatch1/AssignMovingAvg2N
%batch1/AssignMovingAvg/ReadVariableOp%batch1/AssignMovingAvg/ReadVariableOp24
batch1/AssignMovingAvg_1batch1/AssignMovingAvg_12R
'batch1/AssignMovingAvg_1/ReadVariableOp'batch1/AssignMovingAvg_1/ReadVariableOp2B
batch1/batchnorm/ReadVariableOpbatch1/batchnorm/ReadVariableOp2J
#batch1/batchnorm/mul/ReadVariableOp#batch1/batchnorm/mul/ReadVariableOp2\
,classification_output/BiasAdd/ReadVariableOp,classification_output/BiasAdd/ReadVariableOp2Z
+classification_output/MatMul/ReadVariableOp+classification_output/MatMul/ReadVariableOp2X
*cont_decoder_output/BiasAdd/ReadVariableOp*cont_decoder_output/BiasAdd/ReadVariableOp2V
)cont_decoder_output/MatMul/ReadVariableOp)cont_decoder_output/MatMul/ReadVariableOp26
h4/BiasAdd/ReadVariableOph4/BiasAdd/ReadVariableOp24
h4/MatMul/ReadVariableOph4/MatMul/ReadVariableOp26
h5/BiasAdd/ReadVariableOph5/BiasAdd/ReadVariableOp24
h5/MatMul/ReadVariableOph5/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_decoder_layer_call_and_return_conditional_losses_3330103

inputs

h4_3330072:	�

h4_3330074:	�
batch1_3330077:	�
batch1_3330079:	�
batch1_3330081:	�
batch1_3330083:	�

h5_3330086:
��

h5_3330088:	�0
classification_output_3330091:	�+
classification_output_3330093:.
cont_decoder_output_3330096:	�)
cont_decoder_output_3330098:
identity

identity_1��batch1/StatefulPartitionedCall�-classification_output/StatefulPartitionedCall�+cont_decoder_output/StatefulPartitionedCall�h4/StatefulPartitionedCall�h5/StatefulPartitionedCall�
h4/StatefulPartitionedCallStatefulPartitionedCallinputs
h4_3330072
h4_3330074*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_3329900�
batch1/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0batch1_3330077batch1_3330079batch1_3330081batch1_3330083*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329871�
h5/StatefulPartitionedCallStatefulPartitionedCall'batch1/StatefulPartitionedCall:output:0
h5_3330086
h5_3330088*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h5_layer_call_and_return_conditional_losses_3329926�
-classification_output/StatefulPartitionedCallStatefulPartitionedCall#h5/StatefulPartitionedCall:output:0classification_output_3330091classification_output_3330093*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_3329943�
+cont_decoder_output/StatefulPartitionedCallStatefulPartitionedCall#h5/StatefulPartitionedCall:output:0cont_decoder_output_3330096cont_decoder_output_3330098*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3329959�
IdentityIdentity4cont_decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1Identity6classification_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batch1/StatefulPartitionedCall.^classification_output/StatefulPartitionedCall,^cont_decoder_output/StatefulPartitionedCall^h4/StatefulPartitionedCall^h5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2^
-classification_output/StatefulPartitionedCall-classification_output/StatefulPartitionedCall2Z
+cont_decoder_output/StatefulPartitionedCall+cont_decoder_output/StatefulPartitionedCall28
h4/StatefulPartitionedCallh4/StatefulPartitionedCall28
h5/StatefulPartitionedCallh5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
F__inference_z_log_var_layer_call_and_return_conditional_losses_3329434

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
?__inference_h4_layer_call_and_return_conditional_losses_3331792

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_batch1_layer_call_fn_3331563

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329280p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_decoder_layer_call_fn_3331420

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_3330103o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
?__inference_h1_layer_call_and_return_conditional_losses_3329356

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_encoder_layer_call_fn_3331157

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_3329471o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
B__inference_vae_3_layer_call_and_return_conditional_losses_3330977

inputs<
)encoder_h1_matmul_readvariableop_resource:	�9
*encoder_h1_biasadd_readvariableop_resource:	�?
0encoder_batch1_batchnorm_readvariableop_resource:	�C
4encoder_batch1_batchnorm_mul_readvariableop_resource:	�A
2encoder_batch1_batchnorm_readvariableop_1_resource:	�A
2encoder_batch1_batchnorm_readvariableop_2_resource:	�=
)encoder_h2_matmul_readvariableop_resource:
��9
*encoder_h2_biasadd_readvariableop_resource:	�@
-encoder_z_mean_matmul_readvariableop_resource:	�<
.encoder_z_mean_biasadd_readvariableop_resource:C
0encoder_z_log_var_matmul_readvariableop_resource:	�?
1encoder_z_log_var_biasadd_readvariableop_resource:<
)decoder_h4_matmul_readvariableop_resource:	�9
*decoder_h4_biasadd_readvariableop_resource:	�?
0decoder_batch1_batchnorm_readvariableop_resource:	�C
4decoder_batch1_batchnorm_mul_readvariableop_resource:	�A
2decoder_batch1_batchnorm_readvariableop_1_resource:	�A
2decoder_batch1_batchnorm_readvariableop_2_resource:	�=
)decoder_h5_matmul_readvariableop_resource:
��9
*decoder_h5_biasadd_readvariableop_resource:	�O
<decoder_classification_output_matmul_readvariableop_resource:	�K
=decoder_classification_output_biasadd_readvariableop_resource:M
:decoder_cont_decoder_output_matmul_readvariableop_resource:	�I
;decoder_cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1��'decoder/batch1/batchnorm/ReadVariableOp�)decoder/batch1/batchnorm/ReadVariableOp_1�)decoder/batch1/batchnorm/ReadVariableOp_2�+decoder/batch1/batchnorm/mul/ReadVariableOp�4decoder/classification_output/BiasAdd/ReadVariableOp�3decoder/classification_output/MatMul/ReadVariableOp�2decoder/cont_decoder_output/BiasAdd/ReadVariableOp�1decoder/cont_decoder_output/MatMul/ReadVariableOp�!decoder/h4/BiasAdd/ReadVariableOp� decoder/h4/MatMul/ReadVariableOp�!decoder/h5/BiasAdd/ReadVariableOp� decoder/h5/MatMul/ReadVariableOp�'encoder/batch1/batchnorm/ReadVariableOp�)encoder/batch1/batchnorm/ReadVariableOp_1�)encoder/batch1/batchnorm/ReadVariableOp_2�+encoder/batch1/batchnorm/mul/ReadVariableOp�!encoder/h1/BiasAdd/ReadVariableOp� encoder/h1/MatMul/ReadVariableOp�!encoder/h2/BiasAdd/ReadVariableOp� encoder/h2/MatMul/ReadVariableOp�(encoder/z_log_var/BiasAdd/ReadVariableOp�'encoder/z_log_var/MatMul/ReadVariableOp�%encoder/z_mean/BiasAdd/ReadVariableOp�$encoder/z_mean/MatMul/ReadVariableOp�
 encoder/h1/MatMul/ReadVariableOpReadVariableOp)encoder_h1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
encoder/h1/MatMulMatMulinputs(encoder/h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!encoder/h1/BiasAdd/ReadVariableOpReadVariableOp*encoder_h1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/h1/BiasAddBiasAddencoder/h1/MatMul:product:0)encoder/h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
encoder/h1/ReluReluencoder/h1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'encoder/batch1/batchnorm/ReadVariableOpReadVariableOp0encoder_batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0c
encoder/batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
encoder/batch1/batchnorm/addAddV2/encoder/batch1/batchnorm/ReadVariableOp:value:0'encoder/batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�o
encoder/batch1/batchnorm/RsqrtRsqrt encoder/batch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
+encoder/batch1/batchnorm/mul/ReadVariableOpReadVariableOp4encoder_batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/batch1/batchnorm/mulMul"encoder/batch1/batchnorm/Rsqrt:y:03encoder/batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
encoder/batch1/batchnorm/mul_1Mulencoder/h1/Relu:activations:0 encoder/batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
)encoder/batch1/batchnorm/ReadVariableOp_1ReadVariableOp2encoder_batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
encoder/batch1/batchnorm/mul_2Mul1encoder/batch1/batchnorm/ReadVariableOp_1:value:0 encoder/batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
)encoder/batch1/batchnorm/ReadVariableOp_2ReadVariableOp2encoder_batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
encoder/batch1/batchnorm/subSub1encoder/batch1/batchnorm/ReadVariableOp_2:value:0"encoder/batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
encoder/batch1/batchnorm/add_1AddV2"encoder/batch1/batchnorm/mul_1:z:0 encoder/batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
 encoder/h2/MatMul/ReadVariableOpReadVariableOp)encoder_h2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
encoder/h2/MatMulMatMul"encoder/batch1/batchnorm/add_1:z:0(encoder/h2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!encoder/h2/BiasAdd/ReadVariableOpReadVariableOp*encoder_h2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/h2/BiasAddBiasAddencoder/h2/MatMul:product:0)encoder/h2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
encoder/h2/ReluReluencoder/h2/BiasAdd:output:0*
T0*(
_output_shapes
:����������y
(encoder/select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*encoder/select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*encoder/select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"encoder/select_z_var/strided_sliceStridedSliceencoder/h2/Relu:activations:01encoder/select_z_var/strided_slice/stack:output:03encoder/select_z_var/strided_slice/stack_1:output:03encoder/select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskz
)encoder/select_z_mean/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        |
+encoder/select_z_mean/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       |
+encoder/select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
#encoder/select_z_mean/strided_sliceStridedSliceencoder/h2/Relu:activations:02encoder/select_z_mean/strided_slice/stack:output:04encoder/select_z_mean/strided_slice/stack_1:output:04encoder/select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask�
$encoder/z_mean/MatMul/ReadVariableOpReadVariableOp-encoder_z_mean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
encoder/z_mean/MatMulMatMul,encoder/select_z_mean/strided_slice:output:0,encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp.encoder_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder/z_mean/BiasAddBiasAddencoder/z_mean/MatMul:product:0-encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'encoder/z_log_var/MatMul/ReadVariableOpReadVariableOp0encoder_z_log_var_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
encoder/z_log_var/MatMulMatMul+encoder/select_z_var/strided_slice:output:0/encoder/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(encoder/z_log_var/BiasAdd/ReadVariableOpReadVariableOp1encoder_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder/z_log_var/BiasAddBiasAdd"encoder/z_log_var/MatMul:product:00encoder/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
encoder/Sampling/ShapeShapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:n
$encoder/Sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&encoder/Sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&encoder/Sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder/Sampling/strided_sliceStridedSliceencoder/Sampling/Shape:output:0-encoder/Sampling/strided_slice/stack:output:0/encoder/Sampling/strided_slice/stack_1:output:0/encoder/Sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
encoder/Sampling/Shape_1Shapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:p
&encoder/Sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(encoder/Sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(encoder/Sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 encoder/Sampling/strided_slice_1StridedSlice!encoder/Sampling/Shape_1:output:0/encoder/Sampling/strided_slice_1/stack:output:01encoder/Sampling/strided_slice_1/stack_1:output:01encoder/Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
$encoder/Sampling/random_normal/shapePack'encoder/Sampling/strided_slice:output:0)encoder/Sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:h
#encoder/Sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    j
%encoder/Sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
3encoder/Sampling/random_normal/RandomStandardNormalRandomStandardNormal-encoder/Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed���)*
seed2���
"encoder/Sampling/random_normal/mulMul<encoder/Sampling/random_normal/RandomStandardNormal:output:0.encoder/Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
encoder/Sampling/random_normalAddV2&encoder/Sampling/random_normal/mul:z:0,encoder/Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:���������[
encoder/Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder/Sampling/mulMulencoder/Sampling/mul/x:output:0"encoder/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������g
encoder/Sampling/ExpExpencoder/Sampling/mul:z:0*
T0*'
_output_shapes
:����������
encoder/Sampling/mul_1Mulencoder/Sampling/Exp:y:0"encoder/Sampling/random_normal:z:0*
T0*'
_output_shapes
:����������
encoder/Sampling/addAddV2encoder/z_mean/BiasAdd:output:0encoder/Sampling/mul_1:z:0*
T0*'
_output_shapes
:����������
 decoder/h4/MatMul/ReadVariableOpReadVariableOp)decoder_h4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
decoder/h4/MatMulMatMulencoder/Sampling/add:z:0(decoder/h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!decoder/h4/BiasAdd/ReadVariableOpReadVariableOp*decoder_h4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/h4/BiasAddBiasAdddecoder/h4/MatMul:product:0)decoder/h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
decoder/h4/ReluReludecoder/h4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'decoder/batch1/batchnorm/ReadVariableOpReadVariableOp0decoder_batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0c
decoder/batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
decoder/batch1/batchnorm/addAddV2/decoder/batch1/batchnorm/ReadVariableOp:value:0'decoder/batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�o
decoder/batch1/batchnorm/RsqrtRsqrt decoder/batch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
+decoder/batch1/batchnorm/mul/ReadVariableOpReadVariableOp4decoder_batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/batch1/batchnorm/mulMul"decoder/batch1/batchnorm/Rsqrt:y:03decoder/batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
decoder/batch1/batchnorm/mul_1Muldecoder/h4/Relu:activations:0 decoder/batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
)decoder/batch1/batchnorm/ReadVariableOp_1ReadVariableOp2decoder_batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
decoder/batch1/batchnorm/mul_2Mul1decoder/batch1/batchnorm/ReadVariableOp_1:value:0 decoder/batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
)decoder/batch1/batchnorm/ReadVariableOp_2ReadVariableOp2decoder_batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
decoder/batch1/batchnorm/subSub1decoder/batch1/batchnorm/ReadVariableOp_2:value:0"decoder/batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
decoder/batch1/batchnorm/add_1AddV2"decoder/batch1/batchnorm/mul_1:z:0 decoder/batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
 decoder/h5/MatMul/ReadVariableOpReadVariableOp)decoder_h5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
decoder/h5/MatMulMatMul"decoder/batch1/batchnorm/add_1:z:0(decoder/h5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!decoder/h5/BiasAdd/ReadVariableOpReadVariableOp*decoder_h5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/h5/BiasAddBiasAdddecoder/h5/MatMul:product:0)decoder/h5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
decoder/h5/ReluReludecoder/h5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3decoder/classification_output/MatMul/ReadVariableOpReadVariableOp<decoder_classification_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
$decoder/classification_output/MatMulMatMuldecoder/h5/Relu:activations:0;decoder/classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
4decoder/classification_output/BiasAdd/ReadVariableOpReadVariableOp=decoder_classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%decoder/classification_output/BiasAddBiasAdd.decoder/classification_output/MatMul:product:0<decoder/classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%decoder/classification_output/SigmoidSigmoid.decoder/classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:����������
1decoder/cont_decoder_output/MatMul/ReadVariableOpReadVariableOp:decoder_cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
"decoder/cont_decoder_output/MatMulMatMuldecoder/h5/Relu:activations:09decoder/cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2decoder/cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOp;decoder_cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#decoder/cont_decoder_output/BiasAddBiasAdd,decoder/cont_decoder_output/MatMul:product:0:decoder/cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������{
IdentityIdentity,decoder/cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������z

Identity_1Identity)decoder/classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^decoder/batch1/batchnorm/ReadVariableOp*^decoder/batch1/batchnorm/ReadVariableOp_1*^decoder/batch1/batchnorm/ReadVariableOp_2,^decoder/batch1/batchnorm/mul/ReadVariableOp5^decoder/classification_output/BiasAdd/ReadVariableOp4^decoder/classification_output/MatMul/ReadVariableOp3^decoder/cont_decoder_output/BiasAdd/ReadVariableOp2^decoder/cont_decoder_output/MatMul/ReadVariableOp"^decoder/h4/BiasAdd/ReadVariableOp!^decoder/h4/MatMul/ReadVariableOp"^decoder/h5/BiasAdd/ReadVariableOp!^decoder/h5/MatMul/ReadVariableOp(^encoder/batch1/batchnorm/ReadVariableOp*^encoder/batch1/batchnorm/ReadVariableOp_1*^encoder/batch1/batchnorm/ReadVariableOp_2,^encoder/batch1/batchnorm/mul/ReadVariableOp"^encoder/h1/BiasAdd/ReadVariableOp!^encoder/h1/MatMul/ReadVariableOp"^encoder/h2/BiasAdd/ReadVariableOp!^encoder/h2/MatMul/ReadVariableOp)^encoder/z_log_var/BiasAdd/ReadVariableOp(^encoder/z_log_var/MatMul/ReadVariableOp&^encoder/z_mean/BiasAdd/ReadVariableOp%^encoder/z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2R
'decoder/batch1/batchnorm/ReadVariableOp'decoder/batch1/batchnorm/ReadVariableOp2V
)decoder/batch1/batchnorm/ReadVariableOp_1)decoder/batch1/batchnorm/ReadVariableOp_12V
)decoder/batch1/batchnorm/ReadVariableOp_2)decoder/batch1/batchnorm/ReadVariableOp_22Z
+decoder/batch1/batchnorm/mul/ReadVariableOp+decoder/batch1/batchnorm/mul/ReadVariableOp2l
4decoder/classification_output/BiasAdd/ReadVariableOp4decoder/classification_output/BiasAdd/ReadVariableOp2j
3decoder/classification_output/MatMul/ReadVariableOp3decoder/classification_output/MatMul/ReadVariableOp2h
2decoder/cont_decoder_output/BiasAdd/ReadVariableOp2decoder/cont_decoder_output/BiasAdd/ReadVariableOp2f
1decoder/cont_decoder_output/MatMul/ReadVariableOp1decoder/cont_decoder_output/MatMul/ReadVariableOp2F
!decoder/h4/BiasAdd/ReadVariableOp!decoder/h4/BiasAdd/ReadVariableOp2D
 decoder/h4/MatMul/ReadVariableOp decoder/h4/MatMul/ReadVariableOp2F
!decoder/h5/BiasAdd/ReadVariableOp!decoder/h5/BiasAdd/ReadVariableOp2D
 decoder/h5/MatMul/ReadVariableOp decoder/h5/MatMul/ReadVariableOp2R
'encoder/batch1/batchnorm/ReadVariableOp'encoder/batch1/batchnorm/ReadVariableOp2V
)encoder/batch1/batchnorm/ReadVariableOp_1)encoder/batch1/batchnorm/ReadVariableOp_12V
)encoder/batch1/batchnorm/ReadVariableOp_2)encoder/batch1/batchnorm/ReadVariableOp_22Z
+encoder/batch1/batchnorm/mul/ReadVariableOp+encoder/batch1/batchnorm/mul/ReadVariableOp2F
!encoder/h1/BiasAdd/ReadVariableOp!encoder/h1/BiasAdd/ReadVariableOp2D
 encoder/h1/MatMul/ReadVariableOp encoder/h1/MatMul/ReadVariableOp2F
!encoder/h2/BiasAdd/ReadVariableOp!encoder/h2/BiasAdd/ReadVariableOp2D
 encoder/h2/MatMul/ReadVariableOp encoder/h2/MatMul/ReadVariableOp2T
(encoder/z_log_var/BiasAdd/ReadVariableOp(encoder/z_log_var/BiasAdd/ReadVariableOp2R
'encoder/z_log_var/MatMul/ReadVariableOp'encoder/z_log_var/MatMul/ReadVariableOp2N
%encoder/z_mean/BiasAdd/ReadVariableOp%encoder/z_mean/BiasAdd/ReadVariableOp2L
$encoder/z_mean/MatMul/ReadVariableOp$encoder/z_mean/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_select_z_var_layer_call_and_return_conditional_losses_3329564

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_batch1_layer_call_fn_3331576

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329327p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�
D__inference_encoder_layer_call_and_return_conditional_losses_3329660

inputs

h1_3329625:	�

h1_3329627:	�
batch1_3329630:	�
batch1_3329632:	�
batch1_3329634:	�
batch1_3329636:	�

h2_3329639:
��

h2_3329641:	�!
z_mean_3329646:	�
z_mean_3329648:$
z_log_var_3329651:	�
z_log_var_3329653:
identity

identity_1

identity_2�� Sampling/StatefulPartitionedCall�batch1/StatefulPartitionedCall�h1/StatefulPartitionedCall�h2/StatefulPartitionedCall�!z_log_var/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�
h1/StatefulPartitionedCallStatefulPartitionedCallinputs
h1_3329625
h1_3329627*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_3329356�
batch1/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0batch1_3329630batch1_3329632batch1_3329634batch1_3329636*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329327�
h2/StatefulPartitionedCallStatefulPartitionedCall'batch1/StatefulPartitionedCall:output:0
h2_3329639
h2_3329641*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h2_layer_call_and_return_conditional_losses_3329382�
select_z_var/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_3329564�
select_z_mean/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3329545�
z_mean/StatefulPartitionedCallStatefulPartitionedCall&select_z_mean/PartitionedCall:output:0z_mean_3329646z_mean_3329648*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_3329418�
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall%select_z_var/PartitionedCall:output:0z_log_var_3329651z_log_var_3329653*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_3329434�
 Sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_3329466v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������{

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������z

Identity_2Identity)Sampling/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Sampling/StatefulPartitionedCall^batch1/StatefulPartitionedCall^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2D
 Sampling/StatefulPartitionedCall Sampling/StatefulPartitionedCall2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_decoder_layer_call_fn_3329996
input_4
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_3329967o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4
�
�
C__inference_batch1_layer_call_and_return_conditional_losses_3329824

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_vae_3_layer_call_and_return_conditional_losses_3330627
input_1"
encoder_3330572:	�
encoder_3330574:	�
encoder_3330576:	�
encoder_3330578:	�
encoder_3330580:	�
encoder_3330582:	�#
encoder_3330584:
��
encoder_3330586:	�"
encoder_3330588:	�
encoder_3330590:"
encoder_3330592:	�
encoder_3330594:"
decoder_3330599:	�
decoder_3330601:	�
decoder_3330603:	�
decoder_3330605:	�
decoder_3330607:	�
decoder_3330609:	�#
decoder_3330611:
��
decoder_3330613:	�"
decoder_3330615:	�
decoder_3330617:"
decoder_3330619:	�
decoder_3330621:
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_3330572encoder_3330574encoder_3330576encoder_3330578encoder_3330580encoder_3330582encoder_3330584encoder_3330586encoder_3330588encoder_3330590encoder_3330592encoder_3330594*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_3329471�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2decoder_3330599decoder_3330601decoder_3330603decoder_3330605decoder_3330607decoder_3330609decoder_3330611decoder_3330613decoder_3330615decoder_3330617decoder_3330619decoder_3330621*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_3329967w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������y

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
C__inference_batch1_layer_call_and_return_conditional_losses_3331838

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_vae_3_layer_call_fn_3330858

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:

unknown_21:	�

unknown_22:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_vae_3_layer_call_and_return_conditional_losses_3330461o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_h4_layer_call_fn_3331781

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_3329900p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
٭
�
"__inference__wrapped_model_3329256
input_1B
/vae_3_encoder_h1_matmul_readvariableop_resource:	�?
0vae_3_encoder_h1_biasadd_readvariableop_resource:	�E
6vae_3_encoder_batch1_batchnorm_readvariableop_resource:	�I
:vae_3_encoder_batch1_batchnorm_mul_readvariableop_resource:	�G
8vae_3_encoder_batch1_batchnorm_readvariableop_1_resource:	�G
8vae_3_encoder_batch1_batchnorm_readvariableop_2_resource:	�C
/vae_3_encoder_h2_matmul_readvariableop_resource:
��?
0vae_3_encoder_h2_biasadd_readvariableop_resource:	�F
3vae_3_encoder_z_mean_matmul_readvariableop_resource:	�B
4vae_3_encoder_z_mean_biasadd_readvariableop_resource:I
6vae_3_encoder_z_log_var_matmul_readvariableop_resource:	�E
7vae_3_encoder_z_log_var_biasadd_readvariableop_resource:B
/vae_3_decoder_h4_matmul_readvariableop_resource:	�?
0vae_3_decoder_h4_biasadd_readvariableop_resource:	�E
6vae_3_decoder_batch1_batchnorm_readvariableop_resource:	�I
:vae_3_decoder_batch1_batchnorm_mul_readvariableop_resource:	�G
8vae_3_decoder_batch1_batchnorm_readvariableop_1_resource:	�G
8vae_3_decoder_batch1_batchnorm_readvariableop_2_resource:	�C
/vae_3_decoder_h5_matmul_readvariableop_resource:
��?
0vae_3_decoder_h5_biasadd_readvariableop_resource:	�U
Bvae_3_decoder_classification_output_matmul_readvariableop_resource:	�Q
Cvae_3_decoder_classification_output_biasadd_readvariableop_resource:S
@vae_3_decoder_cont_decoder_output_matmul_readvariableop_resource:	�O
Avae_3_decoder_cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1��-vae_3/decoder/batch1/batchnorm/ReadVariableOp�/vae_3/decoder/batch1/batchnorm/ReadVariableOp_1�/vae_3/decoder/batch1/batchnorm/ReadVariableOp_2�1vae_3/decoder/batch1/batchnorm/mul/ReadVariableOp�:vae_3/decoder/classification_output/BiasAdd/ReadVariableOp�9vae_3/decoder/classification_output/MatMul/ReadVariableOp�8vae_3/decoder/cont_decoder_output/BiasAdd/ReadVariableOp�7vae_3/decoder/cont_decoder_output/MatMul/ReadVariableOp�'vae_3/decoder/h4/BiasAdd/ReadVariableOp�&vae_3/decoder/h4/MatMul/ReadVariableOp�'vae_3/decoder/h5/BiasAdd/ReadVariableOp�&vae_3/decoder/h5/MatMul/ReadVariableOp�-vae_3/encoder/batch1/batchnorm/ReadVariableOp�/vae_3/encoder/batch1/batchnorm/ReadVariableOp_1�/vae_3/encoder/batch1/batchnorm/ReadVariableOp_2�1vae_3/encoder/batch1/batchnorm/mul/ReadVariableOp�'vae_3/encoder/h1/BiasAdd/ReadVariableOp�&vae_3/encoder/h1/MatMul/ReadVariableOp�'vae_3/encoder/h2/BiasAdd/ReadVariableOp�&vae_3/encoder/h2/MatMul/ReadVariableOp�.vae_3/encoder/z_log_var/BiasAdd/ReadVariableOp�-vae_3/encoder/z_log_var/MatMul/ReadVariableOp�+vae_3/encoder/z_mean/BiasAdd/ReadVariableOp�*vae_3/encoder/z_mean/MatMul/ReadVariableOp�
&vae_3/encoder/h1/MatMul/ReadVariableOpReadVariableOp/vae_3_encoder_h1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
vae_3/encoder/h1/MatMulMatMulinput_1.vae_3/encoder/h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'vae_3/encoder/h1/BiasAdd/ReadVariableOpReadVariableOp0vae_3_encoder_h1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
vae_3/encoder/h1/BiasAddBiasAdd!vae_3/encoder/h1/MatMul:product:0/vae_3/encoder/h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
vae_3/encoder/h1/ReluRelu!vae_3/encoder/h1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
-vae_3/encoder/batch1/batchnorm/ReadVariableOpReadVariableOp6vae_3_encoder_batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0i
$vae_3/encoder/batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
"vae_3/encoder/batch1/batchnorm/addAddV25vae_3/encoder/batch1/batchnorm/ReadVariableOp:value:0-vae_3/encoder/batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�{
$vae_3/encoder/batch1/batchnorm/RsqrtRsqrt&vae_3/encoder/batch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
1vae_3/encoder/batch1/batchnorm/mul/ReadVariableOpReadVariableOp:vae_3_encoder_batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"vae_3/encoder/batch1/batchnorm/mulMul(vae_3/encoder/batch1/batchnorm/Rsqrt:y:09vae_3/encoder/batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
$vae_3/encoder/batch1/batchnorm/mul_1Mul#vae_3/encoder/h1/Relu:activations:0&vae_3/encoder/batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
/vae_3/encoder/batch1/batchnorm/ReadVariableOp_1ReadVariableOp8vae_3_encoder_batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
$vae_3/encoder/batch1/batchnorm/mul_2Mul7vae_3/encoder/batch1/batchnorm/ReadVariableOp_1:value:0&vae_3/encoder/batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
/vae_3/encoder/batch1/batchnorm/ReadVariableOp_2ReadVariableOp8vae_3_encoder_batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
"vae_3/encoder/batch1/batchnorm/subSub7vae_3/encoder/batch1/batchnorm/ReadVariableOp_2:value:0(vae_3/encoder/batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
$vae_3/encoder/batch1/batchnorm/add_1AddV2(vae_3/encoder/batch1/batchnorm/mul_1:z:0&vae_3/encoder/batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
&vae_3/encoder/h2/MatMul/ReadVariableOpReadVariableOp/vae_3_encoder_h2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
vae_3/encoder/h2/MatMulMatMul(vae_3/encoder/batch1/batchnorm/add_1:z:0.vae_3/encoder/h2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'vae_3/encoder/h2/BiasAdd/ReadVariableOpReadVariableOp0vae_3_encoder_h2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
vae_3/encoder/h2/BiasAddBiasAdd!vae_3/encoder/h2/MatMul:product:0/vae_3/encoder/h2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
vae_3/encoder/h2/ReluRelu!vae_3/encoder/h2/BiasAdd:output:0*
T0*(
_output_shapes
:����������
.vae_3/encoder/select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0vae_3/encoder/select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0vae_3/encoder/select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(vae_3/encoder/select_z_var/strided_sliceStridedSlice#vae_3/encoder/h2/Relu:activations:07vae_3/encoder/select_z_var/strided_slice/stack:output:09vae_3/encoder/select_z_var/strided_slice/stack_1:output:09vae_3/encoder/select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask�
/vae_3/encoder/select_z_mean/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
1vae_3/encoder/select_z_mean/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
1vae_3/encoder/select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
)vae_3/encoder/select_z_mean/strided_sliceStridedSlice#vae_3/encoder/h2/Relu:activations:08vae_3/encoder/select_z_mean/strided_slice/stack:output:0:vae_3/encoder/select_z_mean/strided_slice/stack_1:output:0:vae_3/encoder/select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask�
*vae_3/encoder/z_mean/MatMul/ReadVariableOpReadVariableOp3vae_3_encoder_z_mean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
vae_3/encoder/z_mean/MatMulMatMul2vae_3/encoder/select_z_mean/strided_slice:output:02vae_3/encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+vae_3/encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp4vae_3_encoder_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
vae_3/encoder/z_mean/BiasAddBiasAdd%vae_3/encoder/z_mean/MatMul:product:03vae_3/encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-vae_3/encoder/z_log_var/MatMul/ReadVariableOpReadVariableOp6vae_3_encoder_z_log_var_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
vae_3/encoder/z_log_var/MatMulMatMul1vae_3/encoder/select_z_var/strided_slice:output:05vae_3/encoder/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.vae_3/encoder/z_log_var/BiasAdd/ReadVariableOpReadVariableOp7vae_3_encoder_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
vae_3/encoder/z_log_var/BiasAddBiasAdd(vae_3/encoder/z_log_var/MatMul:product:06vae_3/encoder/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������q
vae_3/encoder/Sampling/ShapeShape%vae_3/encoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:t
*vae_3/encoder/Sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,vae_3/encoder/Sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,vae_3/encoder/Sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$vae_3/encoder/Sampling/strided_sliceStridedSlice%vae_3/encoder/Sampling/Shape:output:03vae_3/encoder/Sampling/strided_slice/stack:output:05vae_3/encoder/Sampling/strided_slice/stack_1:output:05vae_3/encoder/Sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
vae_3/encoder/Sampling/Shape_1Shape%vae_3/encoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:v
,vae_3/encoder/Sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.vae_3/encoder/Sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.vae_3/encoder/Sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&vae_3/encoder/Sampling/strided_slice_1StridedSlice'vae_3/encoder/Sampling/Shape_1:output:05vae_3/encoder/Sampling/strided_slice_1/stack:output:07vae_3/encoder/Sampling/strided_slice_1/stack_1:output:07vae_3/encoder/Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
*vae_3/encoder/Sampling/random_normal/shapePack-vae_3/encoder/Sampling/strided_slice:output:0/vae_3/encoder/Sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:n
)vae_3/encoder/Sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    p
+vae_3/encoder/Sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
9vae_3/encoder/Sampling/random_normal/RandomStandardNormalRandomStandardNormal3vae_3/encoder/Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed���)*
seed2����
(vae_3/encoder/Sampling/random_normal/mulMulBvae_3/encoder/Sampling/random_normal/RandomStandardNormal:output:04vae_3/encoder/Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
$vae_3/encoder/Sampling/random_normalAddV2,vae_3/encoder/Sampling/random_normal/mul:z:02vae_3/encoder/Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:���������a
vae_3/encoder/Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
vae_3/encoder/Sampling/mulMul%vae_3/encoder/Sampling/mul/x:output:0(vae_3/encoder/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������s
vae_3/encoder/Sampling/ExpExpvae_3/encoder/Sampling/mul:z:0*
T0*'
_output_shapes
:����������
vae_3/encoder/Sampling/mul_1Mulvae_3/encoder/Sampling/Exp:y:0(vae_3/encoder/Sampling/random_normal:z:0*
T0*'
_output_shapes
:����������
vae_3/encoder/Sampling/addAddV2%vae_3/encoder/z_mean/BiasAdd:output:0 vae_3/encoder/Sampling/mul_1:z:0*
T0*'
_output_shapes
:����������
&vae_3/decoder/h4/MatMul/ReadVariableOpReadVariableOp/vae_3_decoder_h4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
vae_3/decoder/h4/MatMulMatMulvae_3/encoder/Sampling/add:z:0.vae_3/decoder/h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'vae_3/decoder/h4/BiasAdd/ReadVariableOpReadVariableOp0vae_3_decoder_h4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
vae_3/decoder/h4/BiasAddBiasAdd!vae_3/decoder/h4/MatMul:product:0/vae_3/decoder/h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
vae_3/decoder/h4/ReluRelu!vae_3/decoder/h4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
-vae_3/decoder/batch1/batchnorm/ReadVariableOpReadVariableOp6vae_3_decoder_batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0i
$vae_3/decoder/batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
"vae_3/decoder/batch1/batchnorm/addAddV25vae_3/decoder/batch1/batchnorm/ReadVariableOp:value:0-vae_3/decoder/batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�{
$vae_3/decoder/batch1/batchnorm/RsqrtRsqrt&vae_3/decoder/batch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
1vae_3/decoder/batch1/batchnorm/mul/ReadVariableOpReadVariableOp:vae_3_decoder_batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"vae_3/decoder/batch1/batchnorm/mulMul(vae_3/decoder/batch1/batchnorm/Rsqrt:y:09vae_3/decoder/batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
$vae_3/decoder/batch1/batchnorm/mul_1Mul#vae_3/decoder/h4/Relu:activations:0&vae_3/decoder/batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
/vae_3/decoder/batch1/batchnorm/ReadVariableOp_1ReadVariableOp8vae_3_decoder_batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
$vae_3/decoder/batch1/batchnorm/mul_2Mul7vae_3/decoder/batch1/batchnorm/ReadVariableOp_1:value:0&vae_3/decoder/batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
/vae_3/decoder/batch1/batchnorm/ReadVariableOp_2ReadVariableOp8vae_3_decoder_batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
"vae_3/decoder/batch1/batchnorm/subSub7vae_3/decoder/batch1/batchnorm/ReadVariableOp_2:value:0(vae_3/decoder/batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
$vae_3/decoder/batch1/batchnorm/add_1AddV2(vae_3/decoder/batch1/batchnorm/mul_1:z:0&vae_3/decoder/batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
&vae_3/decoder/h5/MatMul/ReadVariableOpReadVariableOp/vae_3_decoder_h5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
vae_3/decoder/h5/MatMulMatMul(vae_3/decoder/batch1/batchnorm/add_1:z:0.vae_3/decoder/h5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'vae_3/decoder/h5/BiasAdd/ReadVariableOpReadVariableOp0vae_3_decoder_h5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
vae_3/decoder/h5/BiasAddBiasAdd!vae_3/decoder/h5/MatMul:product:0/vae_3/decoder/h5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
vae_3/decoder/h5/ReluRelu!vae_3/decoder/h5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
9vae_3/decoder/classification_output/MatMul/ReadVariableOpReadVariableOpBvae_3_decoder_classification_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*vae_3/decoder/classification_output/MatMulMatMul#vae_3/decoder/h5/Relu:activations:0Avae_3/decoder/classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
:vae_3/decoder/classification_output/BiasAdd/ReadVariableOpReadVariableOpCvae_3_decoder_classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
+vae_3/decoder/classification_output/BiasAddBiasAdd4vae_3/decoder/classification_output/MatMul:product:0Bvae_3/decoder/classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+vae_3/decoder/classification_output/SigmoidSigmoid4vae_3/decoder/classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:����������
7vae_3/decoder/cont_decoder_output/MatMul/ReadVariableOpReadVariableOp@vae_3_decoder_cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
(vae_3/decoder/cont_decoder_output/MatMulMatMul#vae_3/decoder/h5/Relu:activations:0?vae_3/decoder/cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
8vae_3/decoder/cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOpAvae_3_decoder_cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)vae_3/decoder/cont_decoder_output/BiasAddBiasAdd2vae_3/decoder/cont_decoder_output/MatMul:product:0@vae_3/decoder/cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
IdentityIdentity2vae_3/decoder/cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1Identity/vae_3/decoder/classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp.^vae_3/decoder/batch1/batchnorm/ReadVariableOp0^vae_3/decoder/batch1/batchnorm/ReadVariableOp_10^vae_3/decoder/batch1/batchnorm/ReadVariableOp_22^vae_3/decoder/batch1/batchnorm/mul/ReadVariableOp;^vae_3/decoder/classification_output/BiasAdd/ReadVariableOp:^vae_3/decoder/classification_output/MatMul/ReadVariableOp9^vae_3/decoder/cont_decoder_output/BiasAdd/ReadVariableOp8^vae_3/decoder/cont_decoder_output/MatMul/ReadVariableOp(^vae_3/decoder/h4/BiasAdd/ReadVariableOp'^vae_3/decoder/h4/MatMul/ReadVariableOp(^vae_3/decoder/h5/BiasAdd/ReadVariableOp'^vae_3/decoder/h5/MatMul/ReadVariableOp.^vae_3/encoder/batch1/batchnorm/ReadVariableOp0^vae_3/encoder/batch1/batchnorm/ReadVariableOp_10^vae_3/encoder/batch1/batchnorm/ReadVariableOp_22^vae_3/encoder/batch1/batchnorm/mul/ReadVariableOp(^vae_3/encoder/h1/BiasAdd/ReadVariableOp'^vae_3/encoder/h1/MatMul/ReadVariableOp(^vae_3/encoder/h2/BiasAdd/ReadVariableOp'^vae_3/encoder/h2/MatMul/ReadVariableOp/^vae_3/encoder/z_log_var/BiasAdd/ReadVariableOp.^vae_3/encoder/z_log_var/MatMul/ReadVariableOp,^vae_3/encoder/z_mean/BiasAdd/ReadVariableOp+^vae_3/encoder/z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2^
-vae_3/decoder/batch1/batchnorm/ReadVariableOp-vae_3/decoder/batch1/batchnorm/ReadVariableOp2b
/vae_3/decoder/batch1/batchnorm/ReadVariableOp_1/vae_3/decoder/batch1/batchnorm/ReadVariableOp_12b
/vae_3/decoder/batch1/batchnorm/ReadVariableOp_2/vae_3/decoder/batch1/batchnorm/ReadVariableOp_22f
1vae_3/decoder/batch1/batchnorm/mul/ReadVariableOp1vae_3/decoder/batch1/batchnorm/mul/ReadVariableOp2x
:vae_3/decoder/classification_output/BiasAdd/ReadVariableOp:vae_3/decoder/classification_output/BiasAdd/ReadVariableOp2v
9vae_3/decoder/classification_output/MatMul/ReadVariableOp9vae_3/decoder/classification_output/MatMul/ReadVariableOp2t
8vae_3/decoder/cont_decoder_output/BiasAdd/ReadVariableOp8vae_3/decoder/cont_decoder_output/BiasAdd/ReadVariableOp2r
7vae_3/decoder/cont_decoder_output/MatMul/ReadVariableOp7vae_3/decoder/cont_decoder_output/MatMul/ReadVariableOp2R
'vae_3/decoder/h4/BiasAdd/ReadVariableOp'vae_3/decoder/h4/BiasAdd/ReadVariableOp2P
&vae_3/decoder/h4/MatMul/ReadVariableOp&vae_3/decoder/h4/MatMul/ReadVariableOp2R
'vae_3/decoder/h5/BiasAdd/ReadVariableOp'vae_3/decoder/h5/BiasAdd/ReadVariableOp2P
&vae_3/decoder/h5/MatMul/ReadVariableOp&vae_3/decoder/h5/MatMul/ReadVariableOp2^
-vae_3/encoder/batch1/batchnorm/ReadVariableOp-vae_3/encoder/batch1/batchnorm/ReadVariableOp2b
/vae_3/encoder/batch1/batchnorm/ReadVariableOp_1/vae_3/encoder/batch1/batchnorm/ReadVariableOp_12b
/vae_3/encoder/batch1/batchnorm/ReadVariableOp_2/vae_3/encoder/batch1/batchnorm/ReadVariableOp_22f
1vae_3/encoder/batch1/batchnorm/mul/ReadVariableOp1vae_3/encoder/batch1/batchnorm/mul/ReadVariableOp2R
'vae_3/encoder/h1/BiasAdd/ReadVariableOp'vae_3/encoder/h1/BiasAdd/ReadVariableOp2P
&vae_3/encoder/h1/MatMul/ReadVariableOp&vae_3/encoder/h1/MatMul/ReadVariableOp2R
'vae_3/encoder/h2/BiasAdd/ReadVariableOp'vae_3/encoder/h2/BiasAdd/ReadVariableOp2P
&vae_3/encoder/h2/MatMul/ReadVariableOp&vae_3/encoder/h2/MatMul/ReadVariableOp2`
.vae_3/encoder/z_log_var/BiasAdd/ReadVariableOp.vae_3/encoder/z_log_var/BiasAdd/ReadVariableOp2^
-vae_3/encoder/z_log_var/MatMul/ReadVariableOp-vae_3/encoder/z_log_var/MatMul/ReadVariableOp2Z
+vae_3/encoder/z_mean/BiasAdd/ReadVariableOp+vae_3/encoder/z_mean/BiasAdd/ReadVariableOp2X
*vae_3/encoder/z_mean/MatMul/ReadVariableOp*vae_3/encoder/z_mean/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
e
I__inference_select_z_var_layer_call_and_return_conditional_losses_3329396

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_encoder_layer_call_fn_3329724
input_layer
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_3329660o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
s
*__inference_Sampling_layer_call_fn_3331746
inputs_0
inputs_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_3329466o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
��
�8
#__inference__traced_restore_3332559
file_prefix-
assignvariableop_h1_kernel:	�)
assignvariableop_1_h1_bias:	�0
!assignvariableop_2_batch1_gamma_1:	�/
 assignvariableop_3_batch1_beta_1:	�6
'assignvariableop_4_batch1_moving_mean_1:	�:
+assignvariableop_5_batch1_moving_variance_1:	�0
assignvariableop_6_h2_kernel:
��)
assignvariableop_7_h2_bias:	�3
 assignvariableop_8_z_mean_kernel:	�,
assignvariableop_9_z_mean_bias:7
$assignvariableop_10_z_log_var_kernel:	�0
"assignvariableop_11_z_log_var_bias:0
assignvariableop_12_h4_kernel:	�*
assignvariableop_13_h4_bias:	�/
 assignvariableop_14_batch1_gamma:	�.
assignvariableop_15_batch1_beta:	�5
&assignvariableop_16_batch1_moving_mean:	�9
*assignvariableop_17_batch1_moving_variance:	�1
assignvariableop_18_h5_kernel:
��*
assignvariableop_19_h5_bias:	�A
.assignvariableop_20_cont_decoder_output_kernel:	�:
,assignvariableop_21_cont_decoder_output_bias:C
0assignvariableop_22_classification_output_kernel:	�<
.assignvariableop_23_classification_output_bias:&
assignvariableop_24_total_14: &
assignvariableop_25_count_14: &
assignvariableop_26_total_13: &
assignvariableop_27_count_13: &
assignvariableop_28_total_12: &
assignvariableop_29_count_12: &
assignvariableop_30_total_11: &
assignvariableop_31_count_11: &
assignvariableop_32_total_10: &
assignvariableop_33_count_10: %
assignvariableop_34_total_9: %
assignvariableop_35_count_9: %
assignvariableop_36_total_8: %
assignvariableop_37_count_8: %
assignvariableop_38_total_7: %
assignvariableop_39_count_7: %
assignvariableop_40_total_6: %
assignvariableop_41_count_6: %
assignvariableop_42_total_5: %
assignvariableop_43_count_5: %
assignvariableop_44_total_4: %
assignvariableop_45_count_4: %
assignvariableop_46_total_3: %
assignvariableop_47_count_3: %
assignvariableop_48_total_2: %
assignvariableop_49_count_2: %
assignvariableop_50_total_1: %
assignvariableop_51_count_1: #
assignvariableop_52_total: #
assignvariableop_53_count: '
assignvariableop_54_adam_iter:	 )
assignvariableop_55_adam_beta_1: )
assignvariableop_56_adam_beta_2: (
assignvariableop_57_adam_decay: 0
&assignvariableop_58_adam_learning_rate: 7
$assignvariableop_59_adam_h1_kernel_m:	�1
"assignvariableop_60_adam_h1_bias_m:	�8
)assignvariableop_61_adam_batch1_gamma_m_1:	�7
(assignvariableop_62_adam_batch1_beta_m_1:	�8
$assignvariableop_63_adam_h2_kernel_m:
��1
"assignvariableop_64_adam_h2_bias_m:	�;
(assignvariableop_65_adam_z_mean_kernel_m:	�4
&assignvariableop_66_adam_z_mean_bias_m:>
+assignvariableop_67_adam_z_log_var_kernel_m:	�7
)assignvariableop_68_adam_z_log_var_bias_m:7
$assignvariableop_69_adam_h4_kernel_m:	�1
"assignvariableop_70_adam_h4_bias_m:	�6
'assignvariableop_71_adam_batch1_gamma_m:	�5
&assignvariableop_72_adam_batch1_beta_m:	�8
$assignvariableop_73_adam_h5_kernel_m:
��1
"assignvariableop_74_adam_h5_bias_m:	�H
5assignvariableop_75_adam_cont_decoder_output_kernel_m:	�A
3assignvariableop_76_adam_cont_decoder_output_bias_m:J
7assignvariableop_77_adam_classification_output_kernel_m:	�C
5assignvariableop_78_adam_classification_output_bias_m:7
$assignvariableop_79_adam_h1_kernel_v:	�1
"assignvariableop_80_adam_h1_bias_v:	�8
)assignvariableop_81_adam_batch1_gamma_v_1:	�7
(assignvariableop_82_adam_batch1_beta_v_1:	�8
$assignvariableop_83_adam_h2_kernel_v:
��1
"assignvariableop_84_adam_h2_bias_v:	�;
(assignvariableop_85_adam_z_mean_kernel_v:	�4
&assignvariableop_86_adam_z_mean_bias_v:>
+assignvariableop_87_adam_z_log_var_kernel_v:	�7
)assignvariableop_88_adam_z_log_var_bias_v:7
$assignvariableop_89_adam_h4_kernel_v:	�1
"assignvariableop_90_adam_h4_bias_v:	�6
'assignvariableop_91_adam_batch1_gamma_v:	�5
&assignvariableop_92_adam_batch1_beta_v:	�8
$assignvariableop_93_adam_h5_kernel_v:
��1
"assignvariableop_94_adam_h5_bias_v:	�H
5assignvariableop_95_adam_cont_decoder_output_kernel_v:	�A
3assignvariableop_96_adam_cont_decoder_output_bias_v:J
7assignvariableop_97_adam_classification_output_kernel_v:	�C
5assignvariableop_98_adam_classification_output_bias_v:
identity_100��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�)
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*�(
value�(B�(dB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*�
value�B�dB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*r
dtypesh
f2d	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_h1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_h1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_batch1_gamma_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_batch1_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp'assignvariableop_4_batch1_moving_mean_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp+assignvariableop_5_batch1_moving_variance_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_h2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_h2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp assignvariableop_8_z_mean_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_z_mean_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_z_log_var_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_z_log_var_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_h4_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_h4_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp assignvariableop_14_batch1_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_batch1_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp&assignvariableop_16_batch1_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp*assignvariableop_17_batch1_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_h5_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_h5_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp.assignvariableop_20_cont_decoder_output_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp,assignvariableop_21_cont_decoder_output_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_classification_output_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp.assignvariableop_23_classification_output_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_14Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_14Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_13Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_13Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_total_12Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_count_12Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_total_11Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_count_11Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_10Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_10Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_total_9Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_count_9Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_total_8Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_count_8Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_7Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_7Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_total_6Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_count_6Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_total_5Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_count_5Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_total_4Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_count_4Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_total_3Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpassignvariableop_47_count_3Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpassignvariableop_48_total_2Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpassignvariableop_49_count_2Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_totalIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_countIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpassignvariableop_54_adam_iterIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpassignvariableop_55_adam_beta_1Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpassignvariableop_56_adam_beta_2Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpassignvariableop_57_adam_decayIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_learning_rateIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp$assignvariableop_59_adam_h1_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp"assignvariableop_60_adam_h1_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_batch1_gamma_m_1Identity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_batch1_beta_m_1Identity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp$assignvariableop_63_adam_h2_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp"assignvariableop_64_adam_h2_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp(assignvariableop_65_adam_z_mean_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp&assignvariableop_66_adam_z_mean_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_z_log_var_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_z_log_var_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp$assignvariableop_69_adam_h4_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp"assignvariableop_70_adam_h4_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp'assignvariableop_71_adam_batch1_gamma_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp&assignvariableop_72_adam_batch1_beta_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp$assignvariableop_73_adam_h5_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp"assignvariableop_74_adam_h5_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp5assignvariableop_75_adam_cont_decoder_output_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp3assignvariableop_76_adam_cont_decoder_output_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_classification_output_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp5assignvariableop_78_adam_classification_output_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp$assignvariableop_79_adam_h1_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp"assignvariableop_80_adam_h1_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp)assignvariableop_81_adam_batch1_gamma_v_1Identity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_batch1_beta_v_1Identity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp$assignvariableop_83_adam_h2_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp"assignvariableop_84_adam_h2_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp(assignvariableop_85_adam_z_mean_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp&assignvariableop_86_adam_z_mean_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_z_log_var_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_z_log_var_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp$assignvariableop_89_adam_h4_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp"assignvariableop_90_adam_h4_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp'assignvariableop_91_adam_batch1_gamma_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp&assignvariableop_92_adam_batch1_beta_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp$assignvariableop_93_adam_h5_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp"assignvariableop_94_adam_h5_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp5assignvariableop_95_adam_cont_decoder_output_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp3assignvariableop_96_adam_cont_decoder_output_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp7assignvariableop_97_adam_classification_output_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp5assignvariableop_98_adam_classification_output_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_99Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^NoOp"/device:CPU:0*
T0*
_output_shapes
: X
Identity_100IdentityIdentity_99:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98*"
_acd_function_control_output(*
_output_shapes
 "%
identity_100Identity_100:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_98:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
�
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3331911

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_vae_3_layer_call_fn_3330803

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:

unknown_21:	�

unknown_22:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_vae_3_layer_call_and_return_conditional_losses_3330293o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
R__inference_classification_output_layer_call_and_return_conditional_losses_3329943

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_vae_3_layer_call_and_return_conditional_losses_3330293

inputs"
encoder_3330238:	�
encoder_3330240:	�
encoder_3330242:	�
encoder_3330244:	�
encoder_3330246:	�
encoder_3330248:	�#
encoder_3330250:
��
encoder_3330252:	�"
encoder_3330254:	�
encoder_3330256:"
encoder_3330258:	�
encoder_3330260:"
decoder_3330265:	�
decoder_3330267:	�
decoder_3330269:	�
decoder_3330271:	�
decoder_3330273:	�
decoder_3330275:	�#
decoder_3330277:
��
decoder_3330279:	�"
decoder_3330281:	�
decoder_3330283:"
decoder_3330285:	�
decoder_3330287:
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_3330238encoder_3330240encoder_3330242encoder_3330244encoder_3330246encoder_3330248encoder_3330250encoder_3330252encoder_3330254encoder_3330256encoder_3330258encoder_3330260*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_3329471�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2decoder_3330265decoder_3330267decoder_3330269decoder_3330271decoder_3330273decoder_3330275decoder_3330277decoder_3330279decoder_3330281decoder_3330283decoder_3330285decoder_3330287*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_3329967w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������y

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
7__inference_classification_output_layer_call_fn_3331920

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_3329943o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3329545

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
$__inference_h1_layer_call_fn_3331539

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_3329356p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_encoder_layer_call_fn_3331190

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_3329660o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_batch1_layer_call_fn_3331818

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329871p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_vae_3_layer_call_and_return_conditional_losses_3330461

inputs"
encoder_3330406:	�
encoder_3330408:	�
encoder_3330410:	�
encoder_3330412:	�
encoder_3330414:	�
encoder_3330416:	�#
encoder_3330418:
��
encoder_3330420:	�"
encoder_3330422:	�
encoder_3330424:"
encoder_3330426:	�
encoder_3330428:"
decoder_3330433:	�
decoder_3330435:	�
decoder_3330437:	�
decoder_3330439:	�
decoder_3330441:	�
decoder_3330443:	�#
decoder_3330445:
��
decoder_3330447:	�"
decoder_3330449:	�
decoder_3330451:"
decoder_3330453:	�
decoder_3330455:
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_3330406encoder_3330408encoder_3330410encoder_3330412encoder_3330414encoder_3330416encoder_3330418encoder_3330420encoder_3330422encoder_3330424encoder_3330426encoder_3330428*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_3329660�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2decoder_3330433decoder_3330435decoder_3330437decoder_3330439decoder_3330441decoder_3330443decoder_3330445decoder_3330447decoder_3330449decoder_3330451decoder_3330453decoder_3330455*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_3330103w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������y

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_z_mean_layer_call_fn_3331711

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_3329418o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_3330748
input_1
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:

unknown_21:	�

unknown_22:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_3329256o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
(__inference_batch1_layer_call_fn_3331805

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329824p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
?__inference_h1_layer_call_and_return_conditional_losses_3331550

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
f
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3329406

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_encoder_layer_call_fn_3329502
input_layer
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_3329471o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
J
.__inference_select_z_var_layer_call_fn_3331681

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_3329396a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_batch1_layer_call_and_return_conditional_losses_3329280

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
C__inference_batch1_layer_call_and_return_conditional_losses_3329871

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�j
�	
D__inference_encoder_layer_call_and_return_conditional_losses_3331358

inputs4
!h1_matmul_readvariableop_resource:	�1
"h1_biasadd_readvariableop_resource:	�=
.batch1_assignmovingavg_readvariableop_resource:	�?
0batch1_assignmovingavg_1_readvariableop_resource:	�;
,batch1_batchnorm_mul_readvariableop_resource:	�7
(batch1_batchnorm_readvariableop_resource:	�5
!h2_matmul_readvariableop_resource:
��1
"h2_biasadd_readvariableop_resource:	�8
%z_mean_matmul_readvariableop_resource:	�4
&z_mean_biasadd_readvariableop_resource:;
(z_log_var_matmul_readvariableop_resource:	�7
)z_log_var_biasadd_readvariableop_resource:
identity

identity_1

identity_2��batch1/AssignMovingAvg�%batch1/AssignMovingAvg/ReadVariableOp�batch1/AssignMovingAvg_1�'batch1/AssignMovingAvg_1/ReadVariableOp�batch1/batchnorm/ReadVariableOp�#batch1/batchnorm/mul/ReadVariableOp�h1/BiasAdd/ReadVariableOp�h1/MatMul/ReadVariableOp�h2/BiasAdd/ReadVariableOp�h2/MatMul/ReadVariableOp� z_log_var/BiasAdd/ReadVariableOp�z_log_var/MatMul/ReadVariableOp�z_mean/BiasAdd/ReadVariableOp�z_mean/MatMul/ReadVariableOp{
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0p
	h1/MatMulMatMulinputs h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
h1/ReluReluh1/BiasAdd:output:0*
T0*(
_output_shapes
:����������o
%batch1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
batch1/moments/meanMeanh1/Relu:activations:0.batch1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(s
batch1/moments/StopGradientStopGradientbatch1/moments/mean:output:0*
T0*
_output_shapes
:	��
 batch1/moments/SquaredDifferenceSquaredDifferenceh1/Relu:activations:0$batch1/moments/StopGradient:output:0*
T0*(
_output_shapes
:����������s
)batch1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
batch1/moments/varianceMean$batch1/moments/SquaredDifference:z:02batch1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(|
batch1/moments/SqueezeSqueezebatch1/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
batch1/moments/Squeeze_1Squeeze batch1/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 a
batch1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
%batch1/AssignMovingAvg/ReadVariableOpReadVariableOp.batch1_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/AssignMovingAvg/subSub-batch1/AssignMovingAvg/ReadVariableOp:value:0batch1/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
batch1/AssignMovingAvg/mulMulbatch1/AssignMovingAvg/sub:z:0%batch1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
batch1/AssignMovingAvgAssignSubVariableOp.batch1_assignmovingavg_readvariableop_resourcebatch1/AssignMovingAvg/mul:z:0&^batch1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0c
batch1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
'batch1/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/AssignMovingAvg_1/subSub/batch1/AssignMovingAvg_1/ReadVariableOp:value:0!batch1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
batch1/AssignMovingAvg_1/mulMul batch1/AssignMovingAvg_1/sub:z:0'batch1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
batch1/AssignMovingAvg_1AssignSubVariableOp0batch1_assignmovingavg_1_readvariableop_resource batch1/AssignMovingAvg_1/mul:z:0(^batch1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0[
batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batch1/batchnorm/addAddV2!batch1/moments/Squeeze_1:output:0batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�_
batch1/batchnorm/RsqrtRsqrtbatch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
#batch1/batchnorm/mul/ReadVariableOpReadVariableOp,batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/mulMulbatch1/batchnorm/Rsqrt:y:0+batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
batch1/batchnorm/mul_1Mulh1/Relu:activations:0batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:����������~
batch1/batchnorm/mul_2Mulbatch1/moments/Squeeze:output:0batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
batch1/batchnorm/ReadVariableOpReadVariableOp(batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/subSub'batch1/batchnorm/ReadVariableOp:value:0batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
batch1/batchnorm/add_1AddV2batch1/batchnorm/mul_1:z:0batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:����������|
h2/MatMul/ReadVariableOpReadVariableOp!h2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
	h2/MatMulMatMulbatch1/batchnorm/add_1:z:0 h2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
h2/BiasAdd/ReadVariableOpReadVariableOp"h2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�

h2/BiasAddBiasAddh2/MatMul:product:0!h2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
h2/ReluReluh2/BiasAdd:output:0*
T0*(
_output_shapes
:����������q
 select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       s
"select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        s
"select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
select_z_var/strided_sliceStridedSliceh2/Relu:activations:0)select_z_var/strided_slice/stack:output:0+select_z_var/strided_slice/stack_1:output:0+select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskr
!select_z_mean/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#select_z_mean/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
select_z_mean/strided_sliceStridedSliceh2/Relu:activations:0*select_z_mean/strided_slice/stack:output:0,select_z_mean/strided_slice/stack_1:output:0,select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask�
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
z_mean/MatMulMatMul$select_z_mean/strided_slice:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
z_log_var/MatMulMatMul#select_z_var/strided_slice:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������U
Sampling/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:f
Sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Sampling/strided_sliceStridedSliceSampling/Shape:output:0%Sampling/strided_slice/stack:output:0'Sampling/strided_slice/stack_1:output:0'Sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
Sampling/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:h
Sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:j
 Sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 Sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Sampling/strided_slice_1StridedSliceSampling/Shape_1:output:0'Sampling/strided_slice_1/stack:output:0)Sampling/strided_slice_1/stack_1:output:0)Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Sampling/random_normal/shapePackSampling/strided_slice:output:0!Sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:`
Sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    b
Sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
+Sampling/random_normal/RandomStandardNormalRandomStandardNormal%Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed���)*
seed2����
Sampling/random_normal/mulMul4Sampling/random_normal/RandomStandardNormal:output:0&Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
Sampling/random_normalAddV2Sampling/random_normal/mul:z:0$Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:���������S
Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?z
Sampling/mulMulSampling/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������W
Sampling/ExpExpSampling/mul:z:0*
T0*'
_output_shapes
:���������u
Sampling/mul_1MulSampling/Exp:y:0Sampling/random_normal:z:0*
T0*'
_output_shapes
:���������t
Sampling/addAddV2z_mean/BiasAdd:output:0Sampling/mul_1:z:0*
T0*'
_output_shapes
:���������f
IdentityIdentityz_mean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������k

Identity_1Identityz_log_var/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������a

Identity_2IdentitySampling/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batch1/AssignMovingAvg&^batch1/AssignMovingAvg/ReadVariableOp^batch1/AssignMovingAvg_1(^batch1/AssignMovingAvg_1/ReadVariableOp ^batch1/batchnorm/ReadVariableOp$^batch1/batchnorm/mul/ReadVariableOp^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^h2/BiasAdd/ReadVariableOp^h2/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 20
batch1/AssignMovingAvgbatch1/AssignMovingAvg2N
%batch1/AssignMovingAvg/ReadVariableOp%batch1/AssignMovingAvg/ReadVariableOp24
batch1/AssignMovingAvg_1batch1/AssignMovingAvg_12R
'batch1/AssignMovingAvg_1/ReadVariableOp'batch1/AssignMovingAvg_1/ReadVariableOp2B
batch1/batchnorm/ReadVariableOpbatch1/batchnorm/ReadVariableOp2J
#batch1/batchnorm/mul/ReadVariableOp#batch1/batchnorm/mul/ReadVariableOp26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
h2/BiasAdd/ReadVariableOph2/BiasAdd/ReadVariableOp24
h2/MatMul/ReadVariableOph2/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
?__inference_h5_layer_call_and_return_conditional_losses_3329926

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3331676

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
?__inference_h4_layer_call_and_return_conditional_losses_3329900

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_select_z_var_layer_call_and_return_conditional_losses_3331702

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
C__inference_batch1_layer_call_and_return_conditional_losses_3331872

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
C__inference_batch1_layer_call_and_return_conditional_losses_3331630

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
?__inference_h2_layer_call_and_return_conditional_losses_3329382

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�U
�	
D__inference_encoder_layer_call_and_return_conditional_losses_3331267

inputs4
!h1_matmul_readvariableop_resource:	�1
"h1_biasadd_readvariableop_resource:	�7
(batch1_batchnorm_readvariableop_resource:	�;
,batch1_batchnorm_mul_readvariableop_resource:	�9
*batch1_batchnorm_readvariableop_1_resource:	�9
*batch1_batchnorm_readvariableop_2_resource:	�5
!h2_matmul_readvariableop_resource:
��1
"h2_biasadd_readvariableop_resource:	�8
%z_mean_matmul_readvariableop_resource:	�4
&z_mean_biasadd_readvariableop_resource:;
(z_log_var_matmul_readvariableop_resource:	�7
)z_log_var_biasadd_readvariableop_resource:
identity

identity_1

identity_2��batch1/batchnorm/ReadVariableOp�!batch1/batchnorm/ReadVariableOp_1�!batch1/batchnorm/ReadVariableOp_2�#batch1/batchnorm/mul/ReadVariableOp�h1/BiasAdd/ReadVariableOp�h1/MatMul/ReadVariableOp�h2/BiasAdd/ReadVariableOp�h2/MatMul/ReadVariableOp� z_log_var/BiasAdd/ReadVariableOp�z_log_var/MatMul/ReadVariableOp�z_mean/BiasAdd/ReadVariableOp�z_mean/MatMul/ReadVariableOp{
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0p
	h1/MatMulMatMulinputs h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
h1/ReluReluh1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
batch1/batchnorm/ReadVariableOpReadVariableOp(batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0[
batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batch1/batchnorm/addAddV2'batch1/batchnorm/ReadVariableOp:value:0batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�_
batch1/batchnorm/RsqrtRsqrtbatch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
#batch1/batchnorm/mul/ReadVariableOpReadVariableOp,batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/mulMulbatch1/batchnorm/Rsqrt:y:0+batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
batch1/batchnorm/mul_1Mulh1/Relu:activations:0batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
!batch1/batchnorm/ReadVariableOp_1ReadVariableOp*batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/mul_2Mul)batch1/batchnorm/ReadVariableOp_1:value:0batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
!batch1/batchnorm/ReadVariableOp_2ReadVariableOp*batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/subSub)batch1/batchnorm/ReadVariableOp_2:value:0batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
batch1/batchnorm/add_1AddV2batch1/batchnorm/mul_1:z:0batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:����������|
h2/MatMul/ReadVariableOpReadVariableOp!h2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
	h2/MatMulMatMulbatch1/batchnorm/add_1:z:0 h2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
h2/BiasAdd/ReadVariableOpReadVariableOp"h2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�

h2/BiasAddBiasAddh2/MatMul:product:0!h2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
h2/ReluReluh2/BiasAdd:output:0*
T0*(
_output_shapes
:����������q
 select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       s
"select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        s
"select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
select_z_var/strided_sliceStridedSliceh2/Relu:activations:0)select_z_var/strided_slice/stack:output:0+select_z_var/strided_slice/stack_1:output:0+select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskr
!select_z_mean/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#select_z_mean/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
select_z_mean/strided_sliceStridedSliceh2/Relu:activations:0*select_z_mean/strided_slice/stack:output:0,select_z_mean/strided_slice/stack_1:output:0,select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask�
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
z_mean/MatMulMatMul$select_z_mean/strided_slice:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
z_log_var/MatMulMatMul#select_z_var/strided_slice:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������U
Sampling/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:f
Sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Sampling/strided_sliceStridedSliceSampling/Shape:output:0%Sampling/strided_slice/stack:output:0'Sampling/strided_slice/stack_1:output:0'Sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
Sampling/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:h
Sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:j
 Sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 Sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Sampling/strided_slice_1StridedSliceSampling/Shape_1:output:0'Sampling/strided_slice_1/stack:output:0)Sampling/strided_slice_1/stack_1:output:0)Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Sampling/random_normal/shapePackSampling/strided_slice:output:0!Sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:`
Sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    b
Sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
+Sampling/random_normal/RandomStandardNormalRandomStandardNormal%Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed���)*
seed2����
Sampling/random_normal/mulMul4Sampling/random_normal/RandomStandardNormal:output:0&Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
Sampling/random_normalAddV2Sampling/random_normal/mul:z:0$Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:���������S
Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?z
Sampling/mulMulSampling/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������W
Sampling/ExpExpSampling/mul:z:0*
T0*'
_output_shapes
:���������u
Sampling/mul_1MulSampling/Exp:y:0Sampling/random_normal:z:0*
T0*'
_output_shapes
:���������t
Sampling/addAddV2z_mean/BiasAdd:output:0Sampling/mul_1:z:0*
T0*'
_output_shapes
:���������f
IdentityIdentityz_mean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������k

Identity_1Identityz_log_var/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������a

Identity_2IdentitySampling/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^batch1/batchnorm/ReadVariableOp"^batch1/batchnorm/ReadVariableOp_1"^batch1/batchnorm/ReadVariableOp_2$^batch1/batchnorm/mul/ReadVariableOp^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^h2/BiasAdd/ReadVariableOp^h2/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2B
batch1/batchnorm/ReadVariableOpbatch1/batchnorm/ReadVariableOp2F
!batch1/batchnorm/ReadVariableOp_1!batch1/batchnorm/ReadVariableOp_12F
!batch1/batchnorm/ReadVariableOp_2!batch1/batchnorm/ReadVariableOp_22J
#batch1/batchnorm/mul/ReadVariableOp#batch1/batchnorm/mul/ReadVariableOp26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
h2/BiasAdd/ReadVariableOph2/BiasAdd/ReadVariableOp24
h2/MatMul/ReadVariableOph2/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
J
.__inference_select_z_var_layer_call_fn_3331686

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_3329564a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�%
 __inference__traced_save_3332252
file_prefix(
$savev2_h1_kernel_read_readvariableop&
"savev2_h1_bias_read_readvariableop-
)savev2_batch1_gamma_1_read_readvariableop,
(savev2_batch1_beta_1_read_readvariableop3
/savev2_batch1_moving_mean_1_read_readvariableop7
3savev2_batch1_moving_variance_1_read_readvariableop(
$savev2_h2_kernel_read_readvariableop&
"savev2_h2_bias_read_readvariableop,
(savev2_z_mean_kernel_read_readvariableop*
&savev2_z_mean_bias_read_readvariableop/
+savev2_z_log_var_kernel_read_readvariableop-
)savev2_z_log_var_bias_read_readvariableop(
$savev2_h4_kernel_read_readvariableop&
"savev2_h4_bias_read_readvariableop+
'savev2_batch1_gamma_read_readvariableop*
&savev2_batch1_beta_read_readvariableop1
-savev2_batch1_moving_mean_read_readvariableop5
1savev2_batch1_moving_variance_read_readvariableop(
$savev2_h5_kernel_read_readvariableop&
"savev2_h5_bias_read_readvariableop9
5savev2_cont_decoder_output_kernel_read_readvariableop7
3savev2_cont_decoder_output_bias_read_readvariableop;
7savev2_classification_output_kernel_read_readvariableop9
5savev2_classification_output_bias_read_readvariableop'
#savev2_total_14_read_readvariableop'
#savev2_count_14_read_readvariableop'
#savev2_total_13_read_readvariableop'
#savev2_count_13_read_readvariableop'
#savev2_total_12_read_readvariableop'
#savev2_count_12_read_readvariableop'
#savev2_total_11_read_readvariableop'
#savev2_count_11_read_readvariableop'
#savev2_total_10_read_readvariableop'
#savev2_count_10_read_readvariableop&
"savev2_total_9_read_readvariableop&
"savev2_count_9_read_readvariableop&
"savev2_total_8_read_readvariableop&
"savev2_count_8_read_readvariableop&
"savev2_total_7_read_readvariableop&
"savev2_count_7_read_readvariableop&
"savev2_total_6_read_readvariableop&
"savev2_count_6_read_readvariableop&
"savev2_total_5_read_readvariableop&
"savev2_count_5_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop/
+savev2_adam_h1_kernel_m_read_readvariableop-
)savev2_adam_h1_bias_m_read_readvariableop4
0savev2_adam_batch1_gamma_m_1_read_readvariableop3
/savev2_adam_batch1_beta_m_1_read_readvariableop/
+savev2_adam_h2_kernel_m_read_readvariableop-
)savev2_adam_h2_bias_m_read_readvariableop3
/savev2_adam_z_mean_kernel_m_read_readvariableop1
-savev2_adam_z_mean_bias_m_read_readvariableop6
2savev2_adam_z_log_var_kernel_m_read_readvariableop4
0savev2_adam_z_log_var_bias_m_read_readvariableop/
+savev2_adam_h4_kernel_m_read_readvariableop-
)savev2_adam_h4_bias_m_read_readvariableop2
.savev2_adam_batch1_gamma_m_read_readvariableop1
-savev2_adam_batch1_beta_m_read_readvariableop/
+savev2_adam_h5_kernel_m_read_readvariableop-
)savev2_adam_h5_bias_m_read_readvariableop@
<savev2_adam_cont_decoder_output_kernel_m_read_readvariableop>
:savev2_adam_cont_decoder_output_bias_m_read_readvariableopB
>savev2_adam_classification_output_kernel_m_read_readvariableop@
<savev2_adam_classification_output_bias_m_read_readvariableop/
+savev2_adam_h1_kernel_v_read_readvariableop-
)savev2_adam_h1_bias_v_read_readvariableop4
0savev2_adam_batch1_gamma_v_1_read_readvariableop3
/savev2_adam_batch1_beta_v_1_read_readvariableop/
+savev2_adam_h2_kernel_v_read_readvariableop-
)savev2_adam_h2_bias_v_read_readvariableop3
/savev2_adam_z_mean_kernel_v_read_readvariableop1
-savev2_adam_z_mean_bias_v_read_readvariableop6
2savev2_adam_z_log_var_kernel_v_read_readvariableop4
0savev2_adam_z_log_var_bias_v_read_readvariableop/
+savev2_adam_h4_kernel_v_read_readvariableop-
)savev2_adam_h4_bias_v_read_readvariableop2
.savev2_adam_batch1_gamma_v_read_readvariableop1
-savev2_adam_batch1_beta_v_read_readvariableop/
+savev2_adam_h5_kernel_v_read_readvariableop-
)savev2_adam_h5_bias_v_read_readvariableop@
<savev2_adam_cont_decoder_output_kernel_v_read_readvariableop>
:savev2_adam_cont_decoder_output_bias_v_read_readvariableopB
>savev2_adam_classification_output_kernel_v_read_readvariableop@
<savev2_adam_classification_output_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �)
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*�(
value�(B�(dB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*�
value�B�dB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_h1_kernel_read_readvariableop"savev2_h1_bias_read_readvariableop)savev2_batch1_gamma_1_read_readvariableop(savev2_batch1_beta_1_read_readvariableop/savev2_batch1_moving_mean_1_read_readvariableop3savev2_batch1_moving_variance_1_read_readvariableop$savev2_h2_kernel_read_readvariableop"savev2_h2_bias_read_readvariableop(savev2_z_mean_kernel_read_readvariableop&savev2_z_mean_bias_read_readvariableop+savev2_z_log_var_kernel_read_readvariableop)savev2_z_log_var_bias_read_readvariableop$savev2_h4_kernel_read_readvariableop"savev2_h4_bias_read_readvariableop'savev2_batch1_gamma_read_readvariableop&savev2_batch1_beta_read_readvariableop-savev2_batch1_moving_mean_read_readvariableop1savev2_batch1_moving_variance_read_readvariableop$savev2_h5_kernel_read_readvariableop"savev2_h5_bias_read_readvariableop5savev2_cont_decoder_output_kernel_read_readvariableop3savev2_cont_decoder_output_bias_read_readvariableop7savev2_classification_output_kernel_read_readvariableop5savev2_classification_output_bias_read_readvariableop#savev2_total_14_read_readvariableop#savev2_count_14_read_readvariableop#savev2_total_13_read_readvariableop#savev2_count_13_read_readvariableop#savev2_total_12_read_readvariableop#savev2_count_12_read_readvariableop#savev2_total_11_read_readvariableop#savev2_count_11_read_readvariableop#savev2_total_10_read_readvariableop#savev2_count_10_read_readvariableop"savev2_total_9_read_readvariableop"savev2_count_9_read_readvariableop"savev2_total_8_read_readvariableop"savev2_count_8_read_readvariableop"savev2_total_7_read_readvariableop"savev2_count_7_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop+savev2_adam_h1_kernel_m_read_readvariableop)savev2_adam_h1_bias_m_read_readvariableop0savev2_adam_batch1_gamma_m_1_read_readvariableop/savev2_adam_batch1_beta_m_1_read_readvariableop+savev2_adam_h2_kernel_m_read_readvariableop)savev2_adam_h2_bias_m_read_readvariableop/savev2_adam_z_mean_kernel_m_read_readvariableop-savev2_adam_z_mean_bias_m_read_readvariableop2savev2_adam_z_log_var_kernel_m_read_readvariableop0savev2_adam_z_log_var_bias_m_read_readvariableop+savev2_adam_h4_kernel_m_read_readvariableop)savev2_adam_h4_bias_m_read_readvariableop.savev2_adam_batch1_gamma_m_read_readvariableop-savev2_adam_batch1_beta_m_read_readvariableop+savev2_adam_h5_kernel_m_read_readvariableop)savev2_adam_h5_bias_m_read_readvariableop<savev2_adam_cont_decoder_output_kernel_m_read_readvariableop:savev2_adam_cont_decoder_output_bias_m_read_readvariableop>savev2_adam_classification_output_kernel_m_read_readvariableop<savev2_adam_classification_output_bias_m_read_readvariableop+savev2_adam_h1_kernel_v_read_readvariableop)savev2_adam_h1_bias_v_read_readvariableop0savev2_adam_batch1_gamma_v_1_read_readvariableop/savev2_adam_batch1_beta_v_1_read_readvariableop+savev2_adam_h2_kernel_v_read_readvariableop)savev2_adam_h2_bias_v_read_readvariableop/savev2_adam_z_mean_kernel_v_read_readvariableop-savev2_adam_z_mean_bias_v_read_readvariableop2savev2_adam_z_log_var_kernel_v_read_readvariableop0savev2_adam_z_log_var_bias_v_read_readvariableop+savev2_adam_h4_kernel_v_read_readvariableop)savev2_adam_h4_bias_v_read_readvariableop.savev2_adam_batch1_gamma_v_read_readvariableop-savev2_adam_batch1_beta_v_read_readvariableop+savev2_adam_h5_kernel_v_read_readvariableop)savev2_adam_h5_bias_v_read_readvariableop<savev2_adam_cont_decoder_output_kernel_v_read_readvariableop:savev2_adam_cont_decoder_output_bias_v_read_readvariableop>savev2_adam_classification_output_kernel_v_read_readvariableop<savev2_adam_classification_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *r
dtypesh
f2d	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�:�:�:�:�:�:
��:�:	�::	�::	�:�:�:�:�:�:
��:�:	�::	�:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :	�:�:�:�:
��:�:	�::	�::	�:�:�:�:
��:�:	�::	�::	�:�:�:�:
��:�:	�::	�::	�:�:�:�:
��:�:	�::	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%	!

_output_shapes
:	�: 


_output_shapes
::%!

_output_shapes
:	�: 

_output_shapes
::%!

_output_shapes
:	�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :%<!

_output_shapes
:	�:!=

_output_shapes	
:�:!>

_output_shapes	
:�:!?

_output_shapes	
:�:&@"
 
_output_shapes
:
��:!A

_output_shapes	
:�:%B!

_output_shapes
:	�: C

_output_shapes
::%D!

_output_shapes
:	�: E

_output_shapes
::%F!

_output_shapes
:	�:!G

_output_shapes	
:�:!H

_output_shapes	
:�:!I

_output_shapes	
:�:&J"
 
_output_shapes
:
��:!K

_output_shapes	
:�:%L!

_output_shapes
:	�: M

_output_shapes
::%N!

_output_shapes
:	�: O

_output_shapes
::%P!

_output_shapes
:	�:!Q

_output_shapes	
:�:!R

_output_shapes	
:�:!S

_output_shapes	
:�:&T"
 
_output_shapes
:
��:!U

_output_shapes	
:�:%V!

_output_shapes
:	�: W

_output_shapes
::%X!

_output_shapes
:	�: Y

_output_shapes
::%Z!

_output_shapes
:	�:![

_output_shapes	
:�:!\

_output_shapes	
:�:!]

_output_shapes	
:�:&^"
 
_output_shapes
:
��:!_

_output_shapes	
:�:%`!

_output_shapes
:	�: a

_output_shapes
::%b!

_output_shapes
:	�: c

_output_shapes
::d

_output_shapes
: 
�
�
+__inference_z_log_var_layer_call_fn_3331730

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_3329434o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
C__inference_batch1_layer_call_and_return_conditional_losses_3329327

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
5__inference_cont_decoder_output_layer_call_fn_3331901

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3329959o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_vae_3_layer_call_fn_3330346
input_1
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:

unknown_21:	�

unknown_22:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_vae_3_layer_call_and_return_conditional_losses_3330293o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
K
/__inference_select_z_mean_layer_call_fn_3331660

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3329545a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_decoder_layer_call_and_return_conditional_losses_3330231
input_4

h4_3330200:	�

h4_3330202:	�
batch1_3330205:	�
batch1_3330207:	�
batch1_3330209:	�
batch1_3330211:	�

h5_3330214:
��

h5_3330216:	�0
classification_output_3330219:	�+
classification_output_3330221:.
cont_decoder_output_3330224:	�)
cont_decoder_output_3330226:
identity

identity_1��batch1/StatefulPartitionedCall�-classification_output/StatefulPartitionedCall�+cont_decoder_output/StatefulPartitionedCall�h4/StatefulPartitionedCall�h5/StatefulPartitionedCall�
h4/StatefulPartitionedCallStatefulPartitionedCallinput_4
h4_3330200
h4_3330202*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_3329900�
batch1/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0batch1_3330205batch1_3330207batch1_3330209batch1_3330211*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329871�
h5/StatefulPartitionedCallStatefulPartitionedCall'batch1/StatefulPartitionedCall:output:0
h5_3330214
h5_3330216*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h5_layer_call_and_return_conditional_losses_3329926�
-classification_output/StatefulPartitionedCallStatefulPartitionedCall#h5/StatefulPartitionedCall:output:0classification_output_3330219classification_output_3330221*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_3329943�
+cont_decoder_output/StatefulPartitionedCallStatefulPartitionedCall#h5/StatefulPartitionedCall:output:0cont_decoder_output_3330224cont_decoder_output_3330226*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3329959�
IdentityIdentity4cont_decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1Identity6classification_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batch1/StatefulPartitionedCall.^classification_output/StatefulPartitionedCall,^cont_decoder_output/StatefulPartitionedCall^h4/StatefulPartitionedCall^h5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2^
-classification_output/StatefulPartitionedCall-classification_output/StatefulPartitionedCall2Z
+cont_decoder_output/StatefulPartitionedCall+cont_decoder_output/StatefulPartitionedCall28
h4/StatefulPartitionedCallh4/StatefulPartitionedCall28
h5/StatefulPartitionedCallh5/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4
�	
�
C__inference_z_mean_layer_call_and_return_conditional_losses_3331721

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3329959

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3331668

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_decoder_layer_call_and_return_conditional_losses_3330197
input_4

h4_3330166:	�

h4_3330168:	�
batch1_3330171:	�
batch1_3330173:	�
batch1_3330175:	�
batch1_3330177:	�

h5_3330180:
��

h5_3330182:	�0
classification_output_3330185:	�+
classification_output_3330187:.
cont_decoder_output_3330190:	�)
cont_decoder_output_3330192:
identity

identity_1��batch1/StatefulPartitionedCall�-classification_output/StatefulPartitionedCall�+cont_decoder_output/StatefulPartitionedCall�h4/StatefulPartitionedCall�h5/StatefulPartitionedCall�
h4/StatefulPartitionedCallStatefulPartitionedCallinput_4
h4_3330166
h4_3330168*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_3329900�
batch1/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0batch1_3330171batch1_3330173batch1_3330175batch1_3330177*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329824�
h5/StatefulPartitionedCallStatefulPartitionedCall'batch1/StatefulPartitionedCall:output:0
h5_3330180
h5_3330182*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h5_layer_call_and_return_conditional_losses_3329926�
-classification_output/StatefulPartitionedCallStatefulPartitionedCall#h5/StatefulPartitionedCall:output:0classification_output_3330185classification_output_3330187*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_3329943�
+cont_decoder_output/StatefulPartitionedCallStatefulPartitionedCall#h5/StatefulPartitionedCall:output:0cont_decoder_output_3330190cont_decoder_output_3330192*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3329959�
IdentityIdentity4cont_decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1Identity6classification_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batch1/StatefulPartitionedCall.^classification_output/StatefulPartitionedCall,^cont_decoder_output/StatefulPartitionedCall^h4/StatefulPartitionedCall^h5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2^
-classification_output/StatefulPartitionedCall-classification_output/StatefulPartitionedCall2Z
+cont_decoder_output/StatefulPartitionedCall+cont_decoder_output/StatefulPartitionedCall28
h4/StatefulPartitionedCallh4/StatefulPartitionedCall28
h5/StatefulPartitionedCallh5/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4
�
�
)__inference_decoder_layer_call_fn_3331389

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_3329967o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_decoder_layer_call_and_return_conditional_losses_3329967

inputs

h4_3329901:	�

h4_3329903:	�
batch1_3329906:	�
batch1_3329908:	�
batch1_3329910:	�
batch1_3329912:	�

h5_3329927:
��

h5_3329929:	�0
classification_output_3329944:	�+
classification_output_3329946:.
cont_decoder_output_3329960:	�)
cont_decoder_output_3329962:
identity

identity_1��batch1/StatefulPartitionedCall�-classification_output/StatefulPartitionedCall�+cont_decoder_output/StatefulPartitionedCall�h4/StatefulPartitionedCall�h5/StatefulPartitionedCall�
h4/StatefulPartitionedCallStatefulPartitionedCallinputs
h4_3329901
h4_3329903*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_3329900�
batch1/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0batch1_3329906batch1_3329908batch1_3329910batch1_3329912*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329824�
h5/StatefulPartitionedCallStatefulPartitionedCall'batch1/StatefulPartitionedCall:output:0
h5_3329927
h5_3329929*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h5_layer_call_and_return_conditional_losses_3329926�
-classification_output/StatefulPartitionedCallStatefulPartitionedCall#h5/StatefulPartitionedCall:output:0classification_output_3329944classification_output_3329946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_3329943�
+cont_decoder_output/StatefulPartitionedCallStatefulPartitionedCall#h5/StatefulPartitionedCall:output:0cont_decoder_output_3329960cont_decoder_output_3329962*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3329959�
IdentityIdentity4cont_decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1Identity6classification_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batch1/StatefulPartitionedCall.^classification_output/StatefulPartitionedCall,^cont_decoder_output/StatefulPartitionedCall^h4/StatefulPartitionedCall^h5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2^
-classification_output/StatefulPartitionedCall-classification_output/StatefulPartitionedCall2Z
+cont_decoder_output/StatefulPartitionedCall+cont_decoder_output/StatefulPartitionedCall28
h4/StatefulPartitionedCallh4/StatefulPartitionedCall28
h5/StatefulPartitionedCallh5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_h2_layer_call_fn_3331639

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h2_layer_call_and_return_conditional_losses_3329382p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_batch1_layer_call_and_return_conditional_losses_3331596

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�
D__inference_encoder_layer_call_and_return_conditional_losses_3329471

inputs

h1_3329357:	�

h1_3329359:	�
batch1_3329362:	�
batch1_3329364:	�
batch1_3329366:	�
batch1_3329368:	�

h2_3329383:
��

h2_3329385:	�!
z_mean_3329419:	�
z_mean_3329421:$
z_log_var_3329435:	�
z_log_var_3329437:
identity

identity_1

identity_2�� Sampling/StatefulPartitionedCall�batch1/StatefulPartitionedCall�h1/StatefulPartitionedCall�h2/StatefulPartitionedCall�!z_log_var/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�
h1/StatefulPartitionedCallStatefulPartitionedCallinputs
h1_3329357
h1_3329359*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_3329356�
batch1/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0batch1_3329362batch1_3329364batch1_3329366batch1_3329368*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329280�
h2/StatefulPartitionedCallStatefulPartitionedCall'batch1/StatefulPartitionedCall:output:0
h2_3329383
h2_3329385*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h2_layer_call_and_return_conditional_losses_3329382�
select_z_var/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_3329396�
select_z_mean/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3329406�
z_mean/StatefulPartitionedCallStatefulPartitionedCall&select_z_mean/PartitionedCall:output:0z_mean_3329419z_mean_3329421*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_3329418�
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall%select_z_var/PartitionedCall:output:0z_log_var_3329435z_log_var_3329437*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_3329434�
 Sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_3329466v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������{

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������z

Identity_2Identity)Sampling/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Sampling/StatefulPartitionedCall^batch1/StatefulPartitionedCall^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2D
 Sampling/StatefulPartitionedCall Sampling/StatefulPartitionedCall2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�9
�	
D__inference_decoder_layer_call_and_return_conditional_losses_3331468

inputs4
!h4_matmul_readvariableop_resource:	�1
"h4_biasadd_readvariableop_resource:	�7
(batch1_batchnorm_readvariableop_resource:	�;
,batch1_batchnorm_mul_readvariableop_resource:	�9
*batch1_batchnorm_readvariableop_1_resource:	�9
*batch1_batchnorm_readvariableop_2_resource:	�5
!h5_matmul_readvariableop_resource:
��1
"h5_biasadd_readvariableop_resource:	�G
4classification_output_matmul_readvariableop_resource:	�C
5classification_output_biasadd_readvariableop_resource:E
2cont_decoder_output_matmul_readvariableop_resource:	�A
3cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1��batch1/batchnorm/ReadVariableOp�!batch1/batchnorm/ReadVariableOp_1�!batch1/batchnorm/ReadVariableOp_2�#batch1/batchnorm/mul/ReadVariableOp�,classification_output/BiasAdd/ReadVariableOp�+classification_output/MatMul/ReadVariableOp�*cont_decoder_output/BiasAdd/ReadVariableOp�)cont_decoder_output/MatMul/ReadVariableOp�h4/BiasAdd/ReadVariableOp�h4/MatMul/ReadVariableOp�h5/BiasAdd/ReadVariableOp�h5/MatMul/ReadVariableOp{
h4/MatMul/ReadVariableOpReadVariableOp!h4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0p
	h4/MatMulMatMulinputs h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
h4/BiasAdd/ReadVariableOpReadVariableOp"h4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�

h4/BiasAddBiasAddh4/MatMul:product:0!h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
h4/ReluReluh4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
batch1/batchnorm/ReadVariableOpReadVariableOp(batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0[
batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batch1/batchnorm/addAddV2'batch1/batchnorm/ReadVariableOp:value:0batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�_
batch1/batchnorm/RsqrtRsqrtbatch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
#batch1/batchnorm/mul/ReadVariableOpReadVariableOp,batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/mulMulbatch1/batchnorm/Rsqrt:y:0+batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
batch1/batchnorm/mul_1Mulh4/Relu:activations:0batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
!batch1/batchnorm/ReadVariableOp_1ReadVariableOp*batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/mul_2Mul)batch1/batchnorm/ReadVariableOp_1:value:0batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
!batch1/batchnorm/ReadVariableOp_2ReadVariableOp*batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
batch1/batchnorm/subSub)batch1/batchnorm/ReadVariableOp_2:value:0batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
batch1/batchnorm/add_1AddV2batch1/batchnorm/mul_1:z:0batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:����������|
h5/MatMul/ReadVariableOpReadVariableOp!h5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
	h5/MatMulMatMulbatch1/batchnorm/add_1:z:0 h5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
h5/BiasAdd/ReadVariableOpReadVariableOp"h5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�

h5/BiasAddBiasAddh5/MatMul:product:0!h5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
h5/ReluReluh5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
+classification_output/MatMul/ReadVariableOpReadVariableOp4classification_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
classification_output/MatMulMatMulh5/Relu:activations:03classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,classification_output/BiasAdd/ReadVariableOpReadVariableOp5classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
classification_output/BiasAddBiasAdd&classification_output/MatMul:product:04classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
classification_output/SigmoidSigmoid&classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:����������
)cont_decoder_output/MatMul/ReadVariableOpReadVariableOp2cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
cont_decoder_output/MatMulMatMulh5/Relu:activations:01cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOp3cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
cont_decoder_output/BiasAddBiasAdd$cont_decoder_output/MatMul:product:02cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������r

Identity_1Identity!classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^batch1/batchnorm/ReadVariableOp"^batch1/batchnorm/ReadVariableOp_1"^batch1/batchnorm/ReadVariableOp_2$^batch1/batchnorm/mul/ReadVariableOp-^classification_output/BiasAdd/ReadVariableOp,^classification_output/MatMul/ReadVariableOp+^cont_decoder_output/BiasAdd/ReadVariableOp*^cont_decoder_output/MatMul/ReadVariableOp^h4/BiasAdd/ReadVariableOp^h4/MatMul/ReadVariableOp^h5/BiasAdd/ReadVariableOp^h5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2B
batch1/batchnorm/ReadVariableOpbatch1/batchnorm/ReadVariableOp2F
!batch1/batchnorm/ReadVariableOp_1!batch1/batchnorm/ReadVariableOp_12F
!batch1/batchnorm/ReadVariableOp_2!batch1/batchnorm/ReadVariableOp_22J
#batch1/batchnorm/mul/ReadVariableOp#batch1/batchnorm/mul/ReadVariableOp2\
,classification_output/BiasAdd/ReadVariableOp,classification_output/BiasAdd/ReadVariableOp2Z
+classification_output/MatMul/ReadVariableOp+classification_output/MatMul/ReadVariableOp2X
*cont_decoder_output/BiasAdd/ReadVariableOp*cont_decoder_output/BiasAdd/ReadVariableOp2V
)cont_decoder_output/MatMul/ReadVariableOp)cont_decoder_output/MatMul/ReadVariableOp26
h4/BiasAdd/ReadVariableOph4/BiasAdd/ReadVariableOp24
h4/MatMul/ReadVariableOph4/MatMul/ReadVariableOp26
h5/BiasAdd/ReadVariableOph5/BiasAdd/ReadVariableOp24
h5/MatMul/ReadVariableOph5/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
'__inference_vae_3_layer_call_fn_3330569
input_1
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:

unknown_21:	�

unknown_22:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_vae_3_layer_call_and_return_conditional_losses_3330461o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
e
I__inference_select_z_var_layer_call_and_return_conditional_losses_3331694

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
B__inference_vae_3_layer_call_and_return_conditional_losses_3331124

inputs<
)encoder_h1_matmul_readvariableop_resource:	�9
*encoder_h1_biasadd_readvariableop_resource:	�E
6encoder_batch1_assignmovingavg_readvariableop_resource:	�G
8encoder_batch1_assignmovingavg_1_readvariableop_resource:	�C
4encoder_batch1_batchnorm_mul_readvariableop_resource:	�?
0encoder_batch1_batchnorm_readvariableop_resource:	�=
)encoder_h2_matmul_readvariableop_resource:
��9
*encoder_h2_biasadd_readvariableop_resource:	�@
-encoder_z_mean_matmul_readvariableop_resource:	�<
.encoder_z_mean_biasadd_readvariableop_resource:C
0encoder_z_log_var_matmul_readvariableop_resource:	�?
1encoder_z_log_var_biasadd_readvariableop_resource:<
)decoder_h4_matmul_readvariableop_resource:	�9
*decoder_h4_biasadd_readvariableop_resource:	�E
6decoder_batch1_assignmovingavg_readvariableop_resource:	�G
8decoder_batch1_assignmovingavg_1_readvariableop_resource:	�C
4decoder_batch1_batchnorm_mul_readvariableop_resource:	�?
0decoder_batch1_batchnorm_readvariableop_resource:	�=
)decoder_h5_matmul_readvariableop_resource:
��9
*decoder_h5_biasadd_readvariableop_resource:	�O
<decoder_classification_output_matmul_readvariableop_resource:	�K
=decoder_classification_output_biasadd_readvariableop_resource:M
:decoder_cont_decoder_output_matmul_readvariableop_resource:	�I
;decoder_cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1��decoder/batch1/AssignMovingAvg�-decoder/batch1/AssignMovingAvg/ReadVariableOp� decoder/batch1/AssignMovingAvg_1�/decoder/batch1/AssignMovingAvg_1/ReadVariableOp�'decoder/batch1/batchnorm/ReadVariableOp�+decoder/batch1/batchnorm/mul/ReadVariableOp�4decoder/classification_output/BiasAdd/ReadVariableOp�3decoder/classification_output/MatMul/ReadVariableOp�2decoder/cont_decoder_output/BiasAdd/ReadVariableOp�1decoder/cont_decoder_output/MatMul/ReadVariableOp�!decoder/h4/BiasAdd/ReadVariableOp� decoder/h4/MatMul/ReadVariableOp�!decoder/h5/BiasAdd/ReadVariableOp� decoder/h5/MatMul/ReadVariableOp�encoder/batch1/AssignMovingAvg�-encoder/batch1/AssignMovingAvg/ReadVariableOp� encoder/batch1/AssignMovingAvg_1�/encoder/batch1/AssignMovingAvg_1/ReadVariableOp�'encoder/batch1/batchnorm/ReadVariableOp�+encoder/batch1/batchnorm/mul/ReadVariableOp�!encoder/h1/BiasAdd/ReadVariableOp� encoder/h1/MatMul/ReadVariableOp�!encoder/h2/BiasAdd/ReadVariableOp� encoder/h2/MatMul/ReadVariableOp�(encoder/z_log_var/BiasAdd/ReadVariableOp�'encoder/z_log_var/MatMul/ReadVariableOp�%encoder/z_mean/BiasAdd/ReadVariableOp�$encoder/z_mean/MatMul/ReadVariableOp�
 encoder/h1/MatMul/ReadVariableOpReadVariableOp)encoder_h1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
encoder/h1/MatMulMatMulinputs(encoder/h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!encoder/h1/BiasAdd/ReadVariableOpReadVariableOp*encoder_h1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/h1/BiasAddBiasAddencoder/h1/MatMul:product:0)encoder/h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
encoder/h1/ReluReluencoder/h1/BiasAdd:output:0*
T0*(
_output_shapes
:����������w
-encoder/batch1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
encoder/batch1/moments/meanMeanencoder/h1/Relu:activations:06encoder/batch1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
#encoder/batch1/moments/StopGradientStopGradient$encoder/batch1/moments/mean:output:0*
T0*
_output_shapes
:	��
(encoder/batch1/moments/SquaredDifferenceSquaredDifferenceencoder/h1/Relu:activations:0,encoder/batch1/moments/StopGradient:output:0*
T0*(
_output_shapes
:����������{
1encoder/batch1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
encoder/batch1/moments/varianceMean,encoder/batch1/moments/SquaredDifference:z:0:encoder/batch1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
encoder/batch1/moments/SqueezeSqueeze$encoder/batch1/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
 encoder/batch1/moments/Squeeze_1Squeeze(encoder/batch1/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 i
$encoder/batch1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
-encoder/batch1/AssignMovingAvg/ReadVariableOpReadVariableOp6encoder_batch1_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"encoder/batch1/AssignMovingAvg/subSub5encoder/batch1/AssignMovingAvg/ReadVariableOp:value:0'encoder/batch1/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
"encoder/batch1/AssignMovingAvg/mulMul&encoder/batch1/AssignMovingAvg/sub:z:0-encoder/batch1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
encoder/batch1/AssignMovingAvgAssignSubVariableOp6encoder_batch1_assignmovingavg_readvariableop_resource&encoder/batch1/AssignMovingAvg/mul:z:0.^encoder/batch1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0k
&encoder/batch1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
/encoder/batch1/AssignMovingAvg_1/ReadVariableOpReadVariableOp8encoder_batch1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$encoder/batch1/AssignMovingAvg_1/subSub7encoder/batch1/AssignMovingAvg_1/ReadVariableOp:value:0)encoder/batch1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
$encoder/batch1/AssignMovingAvg_1/mulMul(encoder/batch1/AssignMovingAvg_1/sub:z:0/encoder/batch1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
 encoder/batch1/AssignMovingAvg_1AssignSubVariableOp8encoder_batch1_assignmovingavg_1_readvariableop_resource(encoder/batch1/AssignMovingAvg_1/mul:z:00^encoder/batch1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0c
encoder/batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
encoder/batch1/batchnorm/addAddV2)encoder/batch1/moments/Squeeze_1:output:0'encoder/batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�o
encoder/batch1/batchnorm/RsqrtRsqrt encoder/batch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
+encoder/batch1/batchnorm/mul/ReadVariableOpReadVariableOp4encoder_batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/batch1/batchnorm/mulMul"encoder/batch1/batchnorm/Rsqrt:y:03encoder/batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
encoder/batch1/batchnorm/mul_1Mulencoder/h1/Relu:activations:0 encoder/batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
encoder/batch1/batchnorm/mul_2Mul'encoder/batch1/moments/Squeeze:output:0 encoder/batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
'encoder/batch1/batchnorm/ReadVariableOpReadVariableOp0encoder_batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/batch1/batchnorm/subSub/encoder/batch1/batchnorm/ReadVariableOp:value:0"encoder/batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
encoder/batch1/batchnorm/add_1AddV2"encoder/batch1/batchnorm/mul_1:z:0 encoder/batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
 encoder/h2/MatMul/ReadVariableOpReadVariableOp)encoder_h2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
encoder/h2/MatMulMatMul"encoder/batch1/batchnorm/add_1:z:0(encoder/h2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!encoder/h2/BiasAdd/ReadVariableOpReadVariableOp*encoder_h2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/h2/BiasAddBiasAddencoder/h2/MatMul:product:0)encoder/h2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
encoder/h2/ReluReluencoder/h2/BiasAdd:output:0*
T0*(
_output_shapes
:����������y
(encoder/select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*encoder/select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*encoder/select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"encoder/select_z_var/strided_sliceStridedSliceencoder/h2/Relu:activations:01encoder/select_z_var/strided_slice/stack:output:03encoder/select_z_var/strided_slice/stack_1:output:03encoder/select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskz
)encoder/select_z_mean/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        |
+encoder/select_z_mean/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       |
+encoder/select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
#encoder/select_z_mean/strided_sliceStridedSliceencoder/h2/Relu:activations:02encoder/select_z_mean/strided_slice/stack:output:04encoder/select_z_mean/strided_slice/stack_1:output:04encoder/select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask�
$encoder/z_mean/MatMul/ReadVariableOpReadVariableOp-encoder_z_mean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
encoder/z_mean/MatMulMatMul,encoder/select_z_mean/strided_slice:output:0,encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp.encoder_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder/z_mean/BiasAddBiasAddencoder/z_mean/MatMul:product:0-encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'encoder/z_log_var/MatMul/ReadVariableOpReadVariableOp0encoder_z_log_var_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
encoder/z_log_var/MatMulMatMul+encoder/select_z_var/strided_slice:output:0/encoder/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(encoder/z_log_var/BiasAdd/ReadVariableOpReadVariableOp1encoder_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder/z_log_var/BiasAddBiasAdd"encoder/z_log_var/MatMul:product:00encoder/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
encoder/Sampling/ShapeShapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:n
$encoder/Sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&encoder/Sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&encoder/Sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder/Sampling/strided_sliceStridedSliceencoder/Sampling/Shape:output:0-encoder/Sampling/strided_slice/stack:output:0/encoder/Sampling/strided_slice/stack_1:output:0/encoder/Sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
encoder/Sampling/Shape_1Shapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:p
&encoder/Sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(encoder/Sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(encoder/Sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 encoder/Sampling/strided_slice_1StridedSlice!encoder/Sampling/Shape_1:output:0/encoder/Sampling/strided_slice_1/stack:output:01encoder/Sampling/strided_slice_1/stack_1:output:01encoder/Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
$encoder/Sampling/random_normal/shapePack'encoder/Sampling/strided_slice:output:0)encoder/Sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:h
#encoder/Sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    j
%encoder/Sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
3encoder/Sampling/random_normal/RandomStandardNormalRandomStandardNormal-encoder/Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed���)*
seed2����
"encoder/Sampling/random_normal/mulMul<encoder/Sampling/random_normal/RandomStandardNormal:output:0.encoder/Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
encoder/Sampling/random_normalAddV2&encoder/Sampling/random_normal/mul:z:0,encoder/Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:���������[
encoder/Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder/Sampling/mulMulencoder/Sampling/mul/x:output:0"encoder/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������g
encoder/Sampling/ExpExpencoder/Sampling/mul:z:0*
T0*'
_output_shapes
:����������
encoder/Sampling/mul_1Mulencoder/Sampling/Exp:y:0"encoder/Sampling/random_normal:z:0*
T0*'
_output_shapes
:����������
encoder/Sampling/addAddV2encoder/z_mean/BiasAdd:output:0encoder/Sampling/mul_1:z:0*
T0*'
_output_shapes
:����������
 decoder/h4/MatMul/ReadVariableOpReadVariableOp)decoder_h4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
decoder/h4/MatMulMatMulencoder/Sampling/add:z:0(decoder/h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!decoder/h4/BiasAdd/ReadVariableOpReadVariableOp*decoder_h4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/h4/BiasAddBiasAdddecoder/h4/MatMul:product:0)decoder/h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
decoder/h4/ReluReludecoder/h4/BiasAdd:output:0*
T0*(
_output_shapes
:����������w
-decoder/batch1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
decoder/batch1/moments/meanMeandecoder/h4/Relu:activations:06decoder/batch1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
#decoder/batch1/moments/StopGradientStopGradient$decoder/batch1/moments/mean:output:0*
T0*
_output_shapes
:	��
(decoder/batch1/moments/SquaredDifferenceSquaredDifferencedecoder/h4/Relu:activations:0,decoder/batch1/moments/StopGradient:output:0*
T0*(
_output_shapes
:����������{
1decoder/batch1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
decoder/batch1/moments/varianceMean,decoder/batch1/moments/SquaredDifference:z:0:decoder/batch1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
decoder/batch1/moments/SqueezeSqueeze$decoder/batch1/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
 decoder/batch1/moments/Squeeze_1Squeeze(decoder/batch1/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 i
$decoder/batch1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
-decoder/batch1/AssignMovingAvg/ReadVariableOpReadVariableOp6decoder_batch1_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"decoder/batch1/AssignMovingAvg/subSub5decoder/batch1/AssignMovingAvg/ReadVariableOp:value:0'decoder/batch1/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
"decoder/batch1/AssignMovingAvg/mulMul&decoder/batch1/AssignMovingAvg/sub:z:0-decoder/batch1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
decoder/batch1/AssignMovingAvgAssignSubVariableOp6decoder_batch1_assignmovingavg_readvariableop_resource&decoder/batch1/AssignMovingAvg/mul:z:0.^decoder/batch1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0k
&decoder/batch1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
/decoder/batch1/AssignMovingAvg_1/ReadVariableOpReadVariableOp8decoder_batch1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$decoder/batch1/AssignMovingAvg_1/subSub7decoder/batch1/AssignMovingAvg_1/ReadVariableOp:value:0)decoder/batch1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
$decoder/batch1/AssignMovingAvg_1/mulMul(decoder/batch1/AssignMovingAvg_1/sub:z:0/decoder/batch1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
 decoder/batch1/AssignMovingAvg_1AssignSubVariableOp8decoder_batch1_assignmovingavg_1_readvariableop_resource(decoder/batch1/AssignMovingAvg_1/mul:z:00^decoder/batch1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0c
decoder/batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
decoder/batch1/batchnorm/addAddV2)decoder/batch1/moments/Squeeze_1:output:0'decoder/batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�o
decoder/batch1/batchnorm/RsqrtRsqrt decoder/batch1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
+decoder/batch1/batchnorm/mul/ReadVariableOpReadVariableOp4decoder_batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/batch1/batchnorm/mulMul"decoder/batch1/batchnorm/Rsqrt:y:03decoder/batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
decoder/batch1/batchnorm/mul_1Muldecoder/h4/Relu:activations:0 decoder/batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
decoder/batch1/batchnorm/mul_2Mul'decoder/batch1/moments/Squeeze:output:0 decoder/batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
'decoder/batch1/batchnorm/ReadVariableOpReadVariableOp0decoder_batch1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/batch1/batchnorm/subSub/decoder/batch1/batchnorm/ReadVariableOp:value:0"decoder/batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
decoder/batch1/batchnorm/add_1AddV2"decoder/batch1/batchnorm/mul_1:z:0 decoder/batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
 decoder/h5/MatMul/ReadVariableOpReadVariableOp)decoder_h5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
decoder/h5/MatMulMatMul"decoder/batch1/batchnorm/add_1:z:0(decoder/h5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!decoder/h5/BiasAdd/ReadVariableOpReadVariableOp*decoder_h5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/h5/BiasAddBiasAdddecoder/h5/MatMul:product:0)decoder/h5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
decoder/h5/ReluReludecoder/h5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3decoder/classification_output/MatMul/ReadVariableOpReadVariableOp<decoder_classification_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
$decoder/classification_output/MatMulMatMuldecoder/h5/Relu:activations:0;decoder/classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
4decoder/classification_output/BiasAdd/ReadVariableOpReadVariableOp=decoder_classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%decoder/classification_output/BiasAddBiasAdd.decoder/classification_output/MatMul:product:0<decoder/classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%decoder/classification_output/SigmoidSigmoid.decoder/classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:����������
1decoder/cont_decoder_output/MatMul/ReadVariableOpReadVariableOp:decoder_cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
"decoder/cont_decoder_output/MatMulMatMuldecoder/h5/Relu:activations:09decoder/cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2decoder/cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOp;decoder_cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#decoder/cont_decoder_output/BiasAddBiasAdd,decoder/cont_decoder_output/MatMul:product:0:decoder/cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������{
IdentityIdentity,decoder/cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������z

Identity_1Identity)decoder/classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp^decoder/batch1/AssignMovingAvg.^decoder/batch1/AssignMovingAvg/ReadVariableOp!^decoder/batch1/AssignMovingAvg_10^decoder/batch1/AssignMovingAvg_1/ReadVariableOp(^decoder/batch1/batchnorm/ReadVariableOp,^decoder/batch1/batchnorm/mul/ReadVariableOp5^decoder/classification_output/BiasAdd/ReadVariableOp4^decoder/classification_output/MatMul/ReadVariableOp3^decoder/cont_decoder_output/BiasAdd/ReadVariableOp2^decoder/cont_decoder_output/MatMul/ReadVariableOp"^decoder/h4/BiasAdd/ReadVariableOp!^decoder/h4/MatMul/ReadVariableOp"^decoder/h5/BiasAdd/ReadVariableOp!^decoder/h5/MatMul/ReadVariableOp^encoder/batch1/AssignMovingAvg.^encoder/batch1/AssignMovingAvg/ReadVariableOp!^encoder/batch1/AssignMovingAvg_10^encoder/batch1/AssignMovingAvg_1/ReadVariableOp(^encoder/batch1/batchnorm/ReadVariableOp,^encoder/batch1/batchnorm/mul/ReadVariableOp"^encoder/h1/BiasAdd/ReadVariableOp!^encoder/h1/MatMul/ReadVariableOp"^encoder/h2/BiasAdd/ReadVariableOp!^encoder/h2/MatMul/ReadVariableOp)^encoder/z_log_var/BiasAdd/ReadVariableOp(^encoder/z_log_var/MatMul/ReadVariableOp&^encoder/z_mean/BiasAdd/ReadVariableOp%^encoder/z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2@
decoder/batch1/AssignMovingAvgdecoder/batch1/AssignMovingAvg2^
-decoder/batch1/AssignMovingAvg/ReadVariableOp-decoder/batch1/AssignMovingAvg/ReadVariableOp2D
 decoder/batch1/AssignMovingAvg_1 decoder/batch1/AssignMovingAvg_12b
/decoder/batch1/AssignMovingAvg_1/ReadVariableOp/decoder/batch1/AssignMovingAvg_1/ReadVariableOp2R
'decoder/batch1/batchnorm/ReadVariableOp'decoder/batch1/batchnorm/ReadVariableOp2Z
+decoder/batch1/batchnorm/mul/ReadVariableOp+decoder/batch1/batchnorm/mul/ReadVariableOp2l
4decoder/classification_output/BiasAdd/ReadVariableOp4decoder/classification_output/BiasAdd/ReadVariableOp2j
3decoder/classification_output/MatMul/ReadVariableOp3decoder/classification_output/MatMul/ReadVariableOp2h
2decoder/cont_decoder_output/BiasAdd/ReadVariableOp2decoder/cont_decoder_output/BiasAdd/ReadVariableOp2f
1decoder/cont_decoder_output/MatMul/ReadVariableOp1decoder/cont_decoder_output/MatMul/ReadVariableOp2F
!decoder/h4/BiasAdd/ReadVariableOp!decoder/h4/BiasAdd/ReadVariableOp2D
 decoder/h4/MatMul/ReadVariableOp decoder/h4/MatMul/ReadVariableOp2F
!decoder/h5/BiasAdd/ReadVariableOp!decoder/h5/BiasAdd/ReadVariableOp2D
 decoder/h5/MatMul/ReadVariableOp decoder/h5/MatMul/ReadVariableOp2@
encoder/batch1/AssignMovingAvgencoder/batch1/AssignMovingAvg2^
-encoder/batch1/AssignMovingAvg/ReadVariableOp-encoder/batch1/AssignMovingAvg/ReadVariableOp2D
 encoder/batch1/AssignMovingAvg_1 encoder/batch1/AssignMovingAvg_12b
/encoder/batch1/AssignMovingAvg_1/ReadVariableOp/encoder/batch1/AssignMovingAvg_1/ReadVariableOp2R
'encoder/batch1/batchnorm/ReadVariableOp'encoder/batch1/batchnorm/ReadVariableOp2Z
+encoder/batch1/batchnorm/mul/ReadVariableOp+encoder/batch1/batchnorm/mul/ReadVariableOp2F
!encoder/h1/BiasAdd/ReadVariableOp!encoder/h1/BiasAdd/ReadVariableOp2D
 encoder/h1/MatMul/ReadVariableOp encoder/h1/MatMul/ReadVariableOp2F
!encoder/h2/BiasAdd/ReadVariableOp!encoder/h2/BiasAdd/ReadVariableOp2D
 encoder/h2/MatMul/ReadVariableOp encoder/h2/MatMul/ReadVariableOp2T
(encoder/z_log_var/BiasAdd/ReadVariableOp(encoder/z_log_var/BiasAdd/ReadVariableOp2R
'encoder/z_log_var/MatMul/ReadVariableOp'encoder/z_log_var/MatMul/ReadVariableOp2N
%encoder/z_mean/BiasAdd/ReadVariableOp%encoder/z_mean/BiasAdd/ReadVariableOp2L
$encoder/z_mean/MatMul/ReadVariableOp$encoder/z_mean/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
R__inference_classification_output_layer_call_and_return_conditional_losses_3331931

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
C__inference_z_mean_layer_call_and_return_conditional_losses_3329418

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�(
�
D__inference_encoder_layer_call_and_return_conditional_losses_3329762
input_layer

h1_3329727:	�

h1_3329729:	�
batch1_3329732:	�
batch1_3329734:	�
batch1_3329736:	�
batch1_3329738:	�

h2_3329741:
��

h2_3329743:	�!
z_mean_3329748:	�
z_mean_3329750:$
z_log_var_3329753:	�
z_log_var_3329755:
identity

identity_1

identity_2�� Sampling/StatefulPartitionedCall�batch1/StatefulPartitionedCall�h1/StatefulPartitionedCall�h2/StatefulPartitionedCall�!z_log_var/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�
h1/StatefulPartitionedCallStatefulPartitionedCallinput_layer
h1_3329727
h1_3329729*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_3329356�
batch1/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0batch1_3329732batch1_3329734batch1_3329736batch1_3329738*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329280�
h2/StatefulPartitionedCallStatefulPartitionedCall'batch1/StatefulPartitionedCall:output:0
h2_3329741
h2_3329743*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h2_layer_call_and_return_conditional_losses_3329382�
select_z_var/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_3329396�
select_z_mean/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3329406�
z_mean/StatefulPartitionedCallStatefulPartitionedCall&select_z_mean/PartitionedCall:output:0z_mean_3329748z_mean_3329750*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_3329418�
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall%select_z_var/PartitionedCall:output:0z_log_var_3329753z_log_var_3329755*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_3329434�
 Sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_3329466v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������{

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������z

Identity_2Identity)Sampling/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Sampling/StatefulPartitionedCall^batch1/StatefulPartitionedCall^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2D
 Sampling/StatefulPartitionedCall Sampling/StatefulPartitionedCall2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
K
/__inference_select_z_mean_layer_call_fn_3331655

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3329406a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_decoder_layer_call_fn_3330163
input_4
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:	�

unknown_10:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_3330103o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4
�
t
E__inference_Sampling_layer_call_and_return_conditional_losses_3331772
inputs_0
inputs_1
identity�=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Shape_1Shapeinputs_0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed���)*
seed2��W�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:���������|
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:���������E
ExpExpmul:z:0*
T0*'
_output_shapes
:���������Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:���������S
addAddV2inputs_0	mul_1:z:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�(
�
D__inference_encoder_layer_call_and_return_conditional_losses_3329800
input_layer

h1_3329765:	�

h1_3329767:	�
batch1_3329770:	�
batch1_3329772:	�
batch1_3329774:	�
batch1_3329776:	�

h2_3329779:
��

h2_3329781:	�!
z_mean_3329786:	�
z_mean_3329788:$
z_log_var_3329791:	�
z_log_var_3329793:
identity

identity_1

identity_2�� Sampling/StatefulPartitionedCall�batch1/StatefulPartitionedCall�h1/StatefulPartitionedCall�h2/StatefulPartitionedCall�!z_log_var/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�
h1/StatefulPartitionedCallStatefulPartitionedCallinput_layer
h1_3329765
h1_3329767*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_3329356�
batch1/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0batch1_3329770batch1_3329772batch1_3329774batch1_3329776*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_3329327�
h2/StatefulPartitionedCallStatefulPartitionedCall'batch1/StatefulPartitionedCall:output:0
h2_3329779
h2_3329781*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_h2_layer_call_and_return_conditional_losses_3329382�
select_z_var/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_3329564�
select_z_mean/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3329545�
z_mean/StatefulPartitionedCallStatefulPartitionedCall&select_z_mean/PartitionedCall:output:0z_mean_3329786z_mean_3329788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_3329418�
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall%select_z_var/PartitionedCall:output:0z_log_var_3329791z_log_var_3329793*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_3329434�
 Sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_3329466v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������{

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������z

Identity_2Identity)Sampling/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Sampling/StatefulPartitionedCall^batch1/StatefulPartitionedCall^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2D
 Sampling/StatefulPartitionedCall Sampling/StatefulPartitionedCall2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�

�
?__inference_h2_layer_call_and_return_conditional_losses_3331650

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������<
output_20
StatefulPartitionedCall:1���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

total_loss_tracker
reconstruction_loss_tracker
kl_loss_tracker
%!reconstruction_loss_class_tracker
mean_abs_diff_cont_tracker
mean_abs_diff_class_tracker
mean_binary_tracker
kl_div_tracker
total_loss_tracker_sample
&"reconstruction_loss_tracker_sample
,(reconstruction_loss_class_tracker_sample
%!mean_abs_diff_cont_tracker_sample
&"mean_abs_diff_class_tracker_sample
mean_binary_tracker_sample
kl_div_tracker_sample
	optimizer
loss

signatures"
_tf_keras_model
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53"
trackable_list_wrapper
�
0
1
2
3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
.14
/15
016
117
218
319"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_32�
'__inference_vae_3_layer_call_fn_3330346
'__inference_vae_3_layer_call_fn_3330803
'__inference_vae_3_layer_call_fn_3330858
'__inference_vae_3_layer_call_fn_3330569�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 zWtrace_0zXtrace_1zYtrace_2zZtrace_3
�
[trace_0
\trace_1
]trace_2
^trace_32�
B__inference_vae_3_layer_call_and_return_conditional_losses_3330977
B__inference_vae_3_layer_call_and_return_conditional_losses_3331124
B__inference_vae_3_layer_call_and_return_conditional_losses_3330627
B__inference_vae_3_layer_call_and_return_conditional_losses_3330685�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z[trace_0z\trace_1z]trace_2z^trace_3
�B�
"__inference__wrapped_model_3329256input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
_layer-0
`layer_with_weights-0
`layer-1
alayer_with_weights-1
alayer-2
blayer_with_weights-2
blayer-3
clayer-4
dlayer-5
elayer_with_weights-3
elayer-6
flayer_with_weights-4
flayer-7
glayer-8
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_network
�
nlayer-0
olayer_with_weights-0
olayer-1
player_with_weights-1
player-2
qlayer_with_weights-2
qlayer-3
rlayer_with_weights-3
rlayer-4
slayer_with_weights-4
slayer-5
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_network
N
z	variables
{	keras_api
	4total
	5count"
_tf_keras_metric
N
|	variables
}	keras_api
	6total
	7count"
_tf_keras_metric
N
~	variables
	keras_api
	8total
	9count"
_tf_keras_metric
P
�	variables
�	keras_api
	:total
	;count"
_tf_keras_metric
P
�	variables
�	keras_api
	<total
	=count"
_tf_keras_metric
P
�	variables
�	keras_api
	>total
	?count"
_tf_keras_metric
P
�	variables
�	keras_api
	@total
	Acount"
_tf_keras_metric
P
�	variables
�	keras_api
	Btotal
	Ccount"
_tf_keras_metric
P
�	variables
�	keras_api
	Dtotal
	Ecount"
_tf_keras_metric
P
�	variables
�	keras_api
	Ftotal
	Gcount"
_tf_keras_metric
P
�	variables
�	keras_api
	Htotal
	Icount"
_tf_keras_metric
P
�	variables
�	keras_api
	Jtotal
	Kcount"
_tf_keras_metric
P
�	variables
�	keras_api
	Ltotal
	Mcount"
_tf_keras_metric
P
�	variables
�	keras_api
	Ntotal
	Ocount"
_tf_keras_metric
P
�	variables
�	keras_api
	Ptotal
	Qcount"
_tf_keras_metric
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem�m�m�m�"m�#m�$m�%m�&m�'m�(m�)m�*m�+m�.m�/m�0m�1m�2m�3m�v�v�v�v�"v�#v�$v�%v�&v�'v�(v�)v�*v�+v�.v�/v�0v�1v�2v�3v�"
	optimizer
 "
trackable_dict_wrapper
-
�serving_default"
signature_map
:	�2	h1/kernel
:�2h1/bias
:�2batch1/gamma
:�2batch1/beta
#:!� (2batch1/moving_mean
':%� (2batch1/moving_variance
:
��2	h2/kernel
:�2h2/bias
 :	�2z_mean/kernel
:2z_mean/bias
#:!	�2z_log_var/kernel
:2z_log_var/bias
:	�2	h4/kernel
:�2h4/bias
:�2batch1/gamma
:�2batch1/beta
#:!� (2batch1/moving_mean
':%� (2batch1/moving_variance
:
��2	h5/kernel
:�2h5/bias
-:+	�2cont_decoder_output/kernel
&:$2cont_decoder_output/bias
/:-	�2classification_output/kernel
(:&2classification_output/bias
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
�
 0
!1
,2
-3
44
55
66
77
88
99
:10
;11
<12
=13
>14
?15
@16
A17
B18
C19
D20
E21
F22
G23
H24
I25
J26
K27
L28
M29
N30
O31
P32
Q33"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
�

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14"
trackable_list_wrapper
 "
trackable_list_wrapper
�


total_loss
reconstruction_loss
kl_loss
reconstruction_loss_class
mean_abs_diff_cont
mean_abs_diff_class
mean_binary_value
kl_divergence
total_loss_sample
reconstruction_loss_sample
$ reconstruction_loss_class_sample
mean_abs_diff_cont_sample
mean_abs_diff_class_sample
mean_binary_value_sample
kl_divergence_sample"
trackable_dict_wrapper
�B�
'__inference_vae_3_layer_call_fn_3330346input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
'__inference_vae_3_layer_call_fn_3330803inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
'__inference_vae_3_layer_call_fn_3330858inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
'__inference_vae_3_layer_call_fn_3330569input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
B__inference_vae_3_layer_call_and_return_conditional_losses_3330977inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
B__inference_vae_3_layer_call_and_return_conditional_losses_3331124inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
B__inference_vae_3_layer_call_and_return_conditional_losses_3330627input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
B__inference_vae_3_layer_call_and_return_conditional_losses_3330685input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
 moving_mean
!moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

&kernel
'bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
v
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11"
trackable_list_wrapper
f
0
1
2
3
"4
#5
$6
%7
&8
'9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
)__inference_encoder_layer_call_fn_3329502
)__inference_encoder_layer_call_fn_3331157
)__inference_encoder_layer_call_fn_3331190
)__inference_encoder_layer_call_fn_3329724�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
D__inference_encoder_layer_call_and_return_conditional_losses_3331267
D__inference_encoder_layer_call_and_return_conditional_losses_3331358
D__inference_encoder_layer_call_and_return_conditional_losses_3329762
D__inference_encoder_layer_call_and_return_conditional_losses_3329800�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

(kernel
)bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	*gamma
+beta
,moving_mean
-moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

0kernel
1bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
v
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311"
trackable_list_wrapper
f
(0
)1
*2
+3
.4
/5
06
17
28
39"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
)__inference_decoder_layer_call_fn_3329996
)__inference_decoder_layer_call_fn_3331389
)__inference_decoder_layer_call_fn_3331420
)__inference_decoder_layer_call_fn_3330163�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
D__inference_decoder_layer_call_and_return_conditional_losses_3331468
D__inference_decoder_layer_call_and_return_conditional_losses_3331530
D__inference_decoder_layer_call_and_return_conditional_losses_3330197
D__inference_decoder_layer_call_and_return_conditional_losses_3330231�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
.
40
51"
trackable_list_wrapper
-
z	variables"
_generic_user_object
.
60
71"
trackable_list_wrapper
-
|	variables"
_generic_user_object
.
80
91"
trackable_list_wrapper
-
~	variables"
_generic_user_object
.
:0
;1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
<0
=1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
>0
?1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
@0
A1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
B0
C1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
D0
E1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
F0
G1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
H0
I1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
J0
K1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
L0
M1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
N0
O1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
P0
Q1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
%__inference_signature_wrapper_3330748input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
$__inference_h1_layer_call_fn_3331539�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
?__inference_h1_layer_call_and_return_conditional_losses_3331550�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
<
0
1
 2
!3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_batch1_layer_call_fn_3331563
(__inference_batch1_layer_call_fn_3331576�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_batch1_layer_call_and_return_conditional_losses_3331596
C__inference_batch1_layer_call_and_return_conditional_losses_3331630�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
$__inference_h2_layer_call_fn_3331639�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
?__inference_h2_layer_call_and_return_conditional_losses_3331650�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
/__inference_select_z_mean_layer_call_fn_3331655
/__inference_select_z_mean_layer_call_fn_3331660�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3331668
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3331676�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_select_z_var_layer_call_fn_3331681
.__inference_select_z_var_layer_call_fn_3331686�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_select_z_var_layer_call_and_return_conditional_losses_3331694
I__inference_select_z_var_layer_call_and_return_conditional_losses_3331702�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_z_mean_layer_call_fn_3331711�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_z_mean_layer_call_and_return_conditional_losses_3331721�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_z_log_var_layer_call_fn_3331730�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_z_log_var_layer_call_and_return_conditional_losses_3331740�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Sampling_layer_call_fn_3331746�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Sampling_layer_call_and_return_conditional_losses_3331772�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
 0
!1"
trackable_list_wrapper
_
_0
`1
a2
b3
c4
d5
e6
f7
g8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_encoder_layer_call_fn_3329502input_layer"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_encoder_layer_call_fn_3331157inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_encoder_layer_call_fn_3331190inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_encoder_layer_call_fn_3329724input_layer"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_encoder_layer_call_and_return_conditional_losses_3331267inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_encoder_layer_call_and_return_conditional_losses_3331358inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_encoder_layer_call_and_return_conditional_losses_3329762input_layer"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_encoder_layer_call_and_return_conditional_losses_3329800input_layer"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
$__inference_h4_layer_call_fn_3331781�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
?__inference_h4_layer_call_and_return_conditional_losses_3331792�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
<
*0
+1
,2
-3"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_batch1_layer_call_fn_3331805
(__inference_batch1_layer_call_fn_3331818�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_batch1_layer_call_and_return_conditional_losses_3331838
C__inference_batch1_layer_call_and_return_conditional_losses_3331872�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
$__inference_h5_layer_call_fn_3331881�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
?__inference_h5_layer_call_and_return_conditional_losses_3331892�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_cont_decoder_output_layer_call_fn_3331901�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3331911�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
7__inference_classification_output_layer_call_fn_3331920�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
R__inference_classification_output_layer_call_and_return_conditional_losses_3331931�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
,0
-1"
trackable_list_wrapper
J
n0
o1
p2
q3
r4
s5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_decoder_layer_call_fn_3329996input_4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_decoder_layer_call_fn_3331389inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_decoder_layer_call_fn_3331420inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_decoder_layer_call_fn_3330163input_4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_decoder_layer_call_and_return_conditional_losses_3331468inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_decoder_layer_call_and_return_conditional_losses_3331530inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_decoder_layer_call_and_return_conditional_losses_3330197input_4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_decoder_layer_call_and_return_conditional_losses_3330231input_4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_h1_layer_call_fn_3331539inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_h1_layer_call_and_return_conditional_losses_3331550inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_batch1_layer_call_fn_3331563inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_batch1_layer_call_fn_3331576inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_batch1_layer_call_and_return_conditional_losses_3331596inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_batch1_layer_call_and_return_conditional_losses_3331630inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_h2_layer_call_fn_3331639inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_h2_layer_call_and_return_conditional_losses_3331650inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_select_z_mean_layer_call_fn_3331655inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_select_z_mean_layer_call_fn_3331660inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3331668inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3331676inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_select_z_var_layer_call_fn_3331681inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_select_z_var_layer_call_fn_3331686inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_select_z_var_layer_call_and_return_conditional_losses_3331694inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_select_z_var_layer_call_and_return_conditional_losses_3331702inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_z_mean_layer_call_fn_3331711inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_z_mean_layer_call_and_return_conditional_losses_3331721inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_z_log_var_layer_call_fn_3331730inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_z_log_var_layer_call_and_return_conditional_losses_3331740inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_Sampling_layer_call_fn_3331746inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Sampling_layer_call_and_return_conditional_losses_3331772inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_h4_layer_call_fn_3331781inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_h4_layer_call_and_return_conditional_losses_3331792inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_batch1_layer_call_fn_3331805inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_batch1_layer_call_fn_3331818inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_batch1_layer_call_and_return_conditional_losses_3331838inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_batch1_layer_call_and_return_conditional_losses_3331872inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_h5_layer_call_fn_3331881inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_h5_layer_call_and_return_conditional_losses_3331892inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_cont_decoder_output_layer_call_fn_3331901inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3331911inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_classification_output_layer_call_fn_3331920inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_classification_output_layer_call_and_return_conditional_losses_3331931inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
!:	�2Adam/h1/kernel/m
:�2Adam/h1/bias/m
 :�2Adam/batch1/gamma/m
:�2Adam/batch1/beta/m
": 
��2Adam/h2/kernel/m
:�2Adam/h2/bias/m
%:#	�2Adam/z_mean/kernel/m
:2Adam/z_mean/bias/m
(:&	�2Adam/z_log_var/kernel/m
!:2Adam/z_log_var/bias/m
!:	�2Adam/h4/kernel/m
:�2Adam/h4/bias/m
 :�2Adam/batch1/gamma/m
:�2Adam/batch1/beta/m
": 
��2Adam/h5/kernel/m
:�2Adam/h5/bias/m
2:0	�2!Adam/cont_decoder_output/kernel/m
+:)2Adam/cont_decoder_output/bias/m
4:2	�2#Adam/classification_output/kernel/m
-:+2!Adam/classification_output/bias/m
!:	�2Adam/h1/kernel/v
:�2Adam/h1/bias/v
 :�2Adam/batch1/gamma/v
:�2Adam/batch1/beta/v
": 
��2Adam/h2/kernel/v
:�2Adam/h2/bias/v
%:#	�2Adam/z_mean/kernel/v
:2Adam/z_mean/bias/v
(:&	�2Adam/z_log_var/kernel/v
!:2Adam/z_log_var/bias/v
!:	�2Adam/h4/kernel/v
:�2Adam/h4/bias/v
 :�2Adam/batch1/gamma/v
:�2Adam/batch1/beta/v
": 
��2Adam/h5/kernel/v
:�2Adam/h5/bias/v
2:0	�2!Adam/cont_decoder_output/kernel/v
+:)2Adam/cont_decoder_output/bias/v
4:2	�2#Adam/classification_output/kernel/v
-:+2!Adam/classification_output/bias/v�
E__inference_Sampling_layer_call_and_return_conditional_losses_3331772�Z�W
P�M
K�H
"�
inputs/0���������
"�
inputs/1���������
� "%�"
�
0���������
� �
*__inference_Sampling_layer_call_fn_3331746vZ�W
P�M
K�H
"�
inputs/0���������
"�
inputs/1���������
� "�����������
"__inference__wrapped_model_3329256�! "#$%&'()-*,+./23010�-
&�#
!�
input_1���������
� "c�`
.
output_1"�
output_1���������
.
output_2"�
output_2����������
C__inference_batch1_layer_call_and_return_conditional_losses_3331596d! 4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
C__inference_batch1_layer_call_and_return_conditional_losses_3331630d !4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
C__inference_batch1_layer_call_and_return_conditional_losses_3331838d-*,+4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
C__inference_batch1_layer_call_and_return_conditional_losses_3331872d,-*+4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
(__inference_batch1_layer_call_fn_3331563W! 4�1
*�'
!�
inputs����������
p 
� "������������
(__inference_batch1_layer_call_fn_3331576W !4�1
*�'
!�
inputs����������
p
� "������������
(__inference_batch1_layer_call_fn_3331805W-*,+4�1
*�'
!�
inputs����������
p 
� "������������
(__inference_batch1_layer_call_fn_3331818W,-*+4�1
*�'
!�
inputs����������
p
� "������������
R__inference_classification_output_layer_call_and_return_conditional_losses_3331931]230�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
7__inference_classification_output_layer_call_fn_3331920P230�-
&�#
!�
inputs����������
� "�����������
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_3331911]010�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
5__inference_cont_decoder_output_layer_call_fn_3331901P010�-
&�#
!�
inputs����������
� "�����������
D__inference_decoder_layer_call_and_return_conditional_losses_3330197�()-*,+./23018�5
.�+
!�
input_4���������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
D__inference_decoder_layer_call_and_return_conditional_losses_3330231�(),-*+./23018�5
.�+
!�
input_4���������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
D__inference_decoder_layer_call_and_return_conditional_losses_3331468�()-*,+./23017�4
-�*
 �
inputs���������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
D__inference_decoder_layer_call_and_return_conditional_losses_3331530�(),-*+./23017�4
-�*
 �
inputs���������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
)__inference_decoder_layer_call_fn_3329996�()-*,+./23018�5
.�+
!�
input_4���������
p 

 
� "=�:
�
0���������
�
1����������
)__inference_decoder_layer_call_fn_3330163�(),-*+./23018�5
.�+
!�
input_4���������
p

 
� "=�:
�
0���������
�
1����������
)__inference_decoder_layer_call_fn_3331389�()-*,+./23017�4
-�*
 �
inputs���������
p 

 
� "=�:
�
0���������
�
1����������
)__inference_decoder_layer_call_fn_3331420�(),-*+./23017�4
-�*
 �
inputs���������
p

 
� "=�:
�
0���������
�
1����������
D__inference_encoder_layer_call_and_return_conditional_losses_3329762�! "#$%&'<�9
2�/
%�"
input_layer���������
p 

 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
D__inference_encoder_layer_call_and_return_conditional_losses_3329800� !"#$%&'<�9
2�/
%�"
input_layer���������
p

 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
D__inference_encoder_layer_call_and_return_conditional_losses_3331267�! "#$%&'7�4
-�*
 �
inputs���������
p 

 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
D__inference_encoder_layer_call_and_return_conditional_losses_3331358� !"#$%&'7�4
-�*
 �
inputs���������
p

 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
)__inference_encoder_layer_call_fn_3329502�! "#$%&'<�9
2�/
%�"
input_layer���������
p 

 
� "Z�W
�
0���������
�
1���������
�
2����������
)__inference_encoder_layer_call_fn_3329724� !"#$%&'<�9
2�/
%�"
input_layer���������
p

 
� "Z�W
�
0���������
�
1���������
�
2����������
)__inference_encoder_layer_call_fn_3331157�! "#$%&'7�4
-�*
 �
inputs���������
p 

 
� "Z�W
�
0���������
�
1���������
�
2����������
)__inference_encoder_layer_call_fn_3331190� !"#$%&'7�4
-�*
 �
inputs���������
p

 
� "Z�W
�
0���������
�
1���������
�
2����������
?__inference_h1_layer_call_and_return_conditional_losses_3331550]/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� x
$__inference_h1_layer_call_fn_3331539P/�,
%�"
 �
inputs���������
� "������������
?__inference_h2_layer_call_and_return_conditional_losses_3331650^"#0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� y
$__inference_h2_layer_call_fn_3331639Q"#0�-
&�#
!�
inputs����������
� "������������
?__inference_h4_layer_call_and_return_conditional_losses_3331792]()/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� x
$__inference_h4_layer_call_fn_3331781P()/�,
%�"
 �
inputs���������
� "������������
?__inference_h5_layer_call_and_return_conditional_losses_3331892^./0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� y
$__inference_h5_layer_call_fn_3331881Q./0�-
&�#
!�
inputs����������
� "������������
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3331668b8�5
.�+
!�
inputs����������

 
p 
� "&�#
�
0����������
� �
J__inference_select_z_mean_layer_call_and_return_conditional_losses_3331676b8�5
.�+
!�
inputs����������

 
p
� "&�#
�
0����������
� �
/__inference_select_z_mean_layer_call_fn_3331655U8�5
.�+
!�
inputs����������

 
p 
� "������������
/__inference_select_z_mean_layer_call_fn_3331660U8�5
.�+
!�
inputs����������

 
p
� "������������
I__inference_select_z_var_layer_call_and_return_conditional_losses_3331694b8�5
.�+
!�
inputs����������

 
p 
� "&�#
�
0����������
� �
I__inference_select_z_var_layer_call_and_return_conditional_losses_3331702b8�5
.�+
!�
inputs����������

 
p
� "&�#
�
0����������
� �
.__inference_select_z_var_layer_call_fn_3331681U8�5
.�+
!�
inputs����������

 
p 
� "������������
.__inference_select_z_var_layer_call_fn_3331686U8�5
.�+
!�
inputs����������

 
p
� "������������
%__inference_signature_wrapper_3330748�! "#$%&'()-*,+./2301;�8
� 
1�.
,
input_1!�
input_1���������"c�`
.
output_1"�
output_1���������
.
output_2"�
output_2����������
B__inference_vae_3_layer_call_and_return_conditional_losses_3330627�! "#$%&'()-*,+./2301@�=
&�#
!�
input_1���������
�

trainingp "K�H
A�>
�
0/0���������
�
0/1���������
� �
B__inference_vae_3_layer_call_and_return_conditional_losses_3330685� !"#$%&'(),-*+./2301@�=
&�#
!�
input_1���������
�

trainingp"K�H
A�>
�
0/0���������
�
0/1���������
� �
B__inference_vae_3_layer_call_and_return_conditional_losses_3330977�! "#$%&'()-*,+./2301?�<
%�"
 �
inputs���������
�

trainingp "K�H
A�>
�
0/0���������
�
0/1���������
� �
B__inference_vae_3_layer_call_and_return_conditional_losses_3331124� !"#$%&'(),-*+./2301?�<
%�"
 �
inputs���������
�

trainingp"K�H
A�>
�
0/0���������
�
0/1���������
� �
'__inference_vae_3_layer_call_fn_3330346�! "#$%&'()-*,+./2301@�=
&�#
!�
input_1���������
�

trainingp "=�:
�
0���������
�
1����������
'__inference_vae_3_layer_call_fn_3330569� !"#$%&'(),-*+./2301@�=
&�#
!�
input_1���������
�

trainingp"=�:
�
0���������
�
1����������
'__inference_vae_3_layer_call_fn_3330803�! "#$%&'()-*,+./2301?�<
%�"
 �
inputs���������
�

trainingp "=�:
�
0���������
�
1����������
'__inference_vae_3_layer_call_fn_3330858� !"#$%&'(),-*+./2301?�<
%�"
 �
inputs���������
�

trainingp"=�:
�
0���������
�
1����������
F__inference_z_log_var_layer_call_and_return_conditional_losses_3331740]&'0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� 
+__inference_z_log_var_layer_call_fn_3331730P&'0�-
&�#
!�
inputs����������
� "�����������
C__inference_z_mean_layer_call_and_return_conditional_losses_3331721]$%0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� |
(__inference_z_mean_layer_call_fn_3331711P$%0�-
&�#
!�
inputs����������
� "����������
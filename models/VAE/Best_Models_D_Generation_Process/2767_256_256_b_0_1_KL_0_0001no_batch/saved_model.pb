щн
Ь€
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02unknown8”л
Ъ
!Adam/classification_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/classification_output/bias/v
У
5Adam/classification_output/bias/v/Read/ReadVariableOpReadVariableOp!Adam/classification_output/bias/v*
_output_shapes
:*
dtype0
£
#Adam/classification_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*4
shared_name%#Adam/classification_output/kernel/v
Ь
7Adam/classification_output/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/classification_output/kernel/v*
_output_shapes
:	А*
dtype0
Ц
Adam/cont_decoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/cont_decoder_output/bias/v
П
3Adam/cont_decoder_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/cont_decoder_output/bias/v*
_output_shapes
:*
dtype0
Я
!Adam/cont_decoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*2
shared_name#!Adam/cont_decoder_output/kernel/v
Ш
5Adam/cont_decoder_output/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/cont_decoder_output/kernel/v*
_output_shapes
:	А*
dtype0
u
Adam/h4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameAdam/h4/bias/v
n
"Adam/h4/bias/v/Read/ReadVariableOpReadVariableOpAdam/h4/bias/v*
_output_shapes	
:А*
dtype0
}
Adam/h4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*!
shared_nameAdam/h4/kernel/v
v
$Adam/h4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/h4/kernel/v*
_output_shapes
:	А*
dtype0
В
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
Л
Adam/z_log_var/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*(
shared_nameAdam/z_log_var/kernel/v
Д
+Adam/z_log_var/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/v*
_output_shapes
:	А*
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
Е
Adam/z_mean/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*%
shared_nameAdam/z_mean/kernel/v
~
(Adam/z_mean/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/v*
_output_shapes
:	А*
dtype0
u
Adam/h1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameAdam/h1/bias/v
n
"Adam/h1/bias/v/Read/ReadVariableOpReadVariableOpAdam/h1/bias/v*
_output_shapes	
:А*
dtype0
}
Adam/h1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*!
shared_nameAdam/h1/kernel/v
v
$Adam/h1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/h1/kernel/v*
_output_shapes
:	А*
dtype0
Ъ
!Adam/classification_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/classification_output/bias/m
У
5Adam/classification_output/bias/m/Read/ReadVariableOpReadVariableOp!Adam/classification_output/bias/m*
_output_shapes
:*
dtype0
£
#Adam/classification_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*4
shared_name%#Adam/classification_output/kernel/m
Ь
7Adam/classification_output/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/classification_output/kernel/m*
_output_shapes
:	А*
dtype0
Ц
Adam/cont_decoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/cont_decoder_output/bias/m
П
3Adam/cont_decoder_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/cont_decoder_output/bias/m*
_output_shapes
:*
dtype0
Я
!Adam/cont_decoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*2
shared_name#!Adam/cont_decoder_output/kernel/m
Ш
5Adam/cont_decoder_output/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/cont_decoder_output/kernel/m*
_output_shapes
:	А*
dtype0
u
Adam/h4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameAdam/h4/bias/m
n
"Adam/h4/bias/m/Read/ReadVariableOpReadVariableOpAdam/h4/bias/m*
_output_shapes	
:А*
dtype0
}
Adam/h4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*!
shared_nameAdam/h4/kernel/m
v
$Adam/h4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/h4/kernel/m*
_output_shapes
:	А*
dtype0
В
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
Л
Adam/z_log_var/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*(
shared_nameAdam/z_log_var/kernel/m
Д
+Adam/z_log_var/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/m*
_output_shapes
:	А*
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
Е
Adam/z_mean/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*%
shared_nameAdam/z_mean/kernel/m
~
(Adam/z_mean/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/m*
_output_shapes
:	А*
dtype0
u
Adam/h1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameAdam/h1/bias/m
n
"Adam/h1/bias/m/Read/ReadVariableOpReadVariableOpAdam/h1/bias/m*
_output_shapes	
:А*
dtype0
}
Adam/h1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*!
shared_nameAdam/h1/kernel/m
v
$Adam/h1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/h1/kernel/m*
_output_shapes
:	А*
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
М
classification_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameclassification_output/bias
Е
.classification_output/bias/Read/ReadVariableOpReadVariableOpclassification_output/bias*
_output_shapes
:*
dtype0
Х
classification_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_nameclassification_output/kernel
О
0classification_output/kernel/Read/ReadVariableOpReadVariableOpclassification_output/kernel*
_output_shapes
:	А*
dtype0
И
cont_decoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecont_decoder_output/bias
Б
,cont_decoder_output/bias/Read/ReadVariableOpReadVariableOpcont_decoder_output/bias*
_output_shapes
:*
dtype0
С
cont_decoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*+
shared_namecont_decoder_output/kernel
К
.cont_decoder_output/kernel/Read/ReadVariableOpReadVariableOpcont_decoder_output/kernel*
_output_shapes
:	А*
dtype0
g
h4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name	h4/bias
`
h4/bias/Read/ReadVariableOpReadVariableOph4/bias*
_output_shapes	
:А*
dtype0
o
	h4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_name	h4/kernel
h
h4/kernel/Read/ReadVariableOpReadVariableOp	h4/kernel*
_output_shapes
:	А*
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
shape:	А*!
shared_namez_log_var/kernel
v
$z_log_var/kernel/Read/ReadVariableOpReadVariableOpz_log_var/kernel*
_output_shapes
:	А*
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
shape:	А*
shared_namez_mean/kernel
p
!z_mean/kernel/Read/ReadVariableOpReadVariableOpz_mean/kernel*
_output_shapes
:	А*
dtype0
g
h1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name	h1/bias
`
h1/bias/Read/ReadVariableOpReadVariableOph1/bias*
_output_shapes	
:А*
dtype0
o
	h1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_name	h1/kernel
h
h1/kernel/Read/ReadVariableOpReadVariableOp	h1/kernel*
_output_shapes
:	А*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
µ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1	h1/kernelh1/biasz_mean/kernelz_mean/biasz_log_var/kernelz_log_var/bias	h4/kernelh4/biasclassification_output/kernelclassification_output/biascont_decoder_output/kernelcont_decoder_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_1187349

NoOpNoOp
љЙ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*чИ
valueмИBиИ BаИ
“
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
 
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
E41*
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
* 
∞
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_3* 
6
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_3* 
* 
є
Slayer-0
Tlayer_with_weights-0
Tlayer-1
Ulayer-2
Vlayer-3
Wlayer_with_weights-1
Wlayer-4
Xlayer_with_weights-2
Xlayer-5
Ylayer-6
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses*
Т
`layer-0
alayer_with_weights-0
alayer-1
blayer_with_weights-1
blayer-2
clayer_with_weights-2
clayer-3
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses*
8
j	variables
k	keras_api
	(total
	)count*
8
l	variables
m	keras_api
	*total
	+count*
8
n	variables
o	keras_api
	,total
	-count*
8
p	variables
q	keras_api
	.total
	/count*
8
r	variables
s	keras_api
	0total
	1count*
8
t	variables
u	keras_api
	2total
	3count*
8
v	variables
w	keras_api
	4total
	5count*
8
x	variables
y	keras_api
	6total
	7count*
8
z	variables
{	keras_api
	8total
	9count*
8
|	variables
}	keras_api
	:total
	;count*
8
~	variables
	keras_api
	<total
	=count*
:
А	variables
Б	keras_api
	>total
	?count*
:
В	variables
Г	keras_api
	@total
	Acount*
:
Д	variables
Е	keras_api
	Btotal
	Ccount*
:
Ж	variables
З	keras_api
	Dtotal
	Ecount*
є
	Иiter
Йbeta_1
Кbeta_2

Лdecay
Мlearning_ratem°mҐm£m§ m•!m¶"mІ#m®$m©%m™&mЂ'mђv≠vЃvѓv∞ v±!v≤"v≥#vі$vµ%vґ&vЈ'vЄ*
* 

Нserving_default* 
IC
VARIABLE_VALUE	h1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
GA
VARIABLE_VALUEh1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEz_mean/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEz_mean/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEz_log_var/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEz_log_var/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE	h4/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
GA
VARIABLE_VALUEh4/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEcont_decoder_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEcont_decoder_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEclassification_output/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEclassification_output/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_14'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_14'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_13'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_13'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_12'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_12'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_11'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_11'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEtotal_10'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEcount_10'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_9'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_9'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_8'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_8'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_7'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_7'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_6'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_6'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_5'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_5'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_4'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_4'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_3'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_3'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_2'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_2'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_1'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_1'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
F@
VARIABLE_VALUEtotal'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
F@
VARIABLE_VALUEcount'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
к
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
311
412
513
614
715
816
917
:18
;19
<20
=21
>22
?23
@24
A25
B26
C27
D28
E29*
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
И
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
ђ
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses

kernel
bias*
Ф
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses* 
Ф
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses* 
ђ
†	variables
°trainable_variables
Ґregularization_losses
£	keras_api
§__call__
+•&call_and_return_all_conditional_losses

kernel
bias*
ђ
¶	variables
Іtrainable_variables
®regularization_losses
©	keras_api
™__call__
+Ђ&call_and_return_all_conditional_losses

 kernel
!bias*
Ф
ђ	variables
≠trainable_variables
Ѓregularization_losses
ѓ	keras_api
∞__call__
+±&call_and_return_all_conditional_losses* 
.
0
1
2
3
 4
!5*
.
0
1
2
3
 4
!5*
* 
Ш
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*
:
Јtrace_0
Єtrace_1
єtrace_2
Їtrace_3* 
:
їtrace_0
Љtrace_1
љtrace_2
Њtrace_3* 
* 
ђ
њ	variables
јtrainable_variables
Ѕregularization_losses
¬	keras_api
√__call__
+ƒ&call_and_return_all_conditional_losses

"kernel
#bias*
ђ
≈	variables
∆trainable_variables
«regularization_losses
»	keras_api
…__call__
+ &call_and_return_all_conditional_losses

$kernel
%bias*
ђ
Ћ	variables
ћtrainable_variables
Ќregularization_losses
ќ	keras_api
ѕ__call__
+–&call_and_return_all_conditional_losses

&kernel
'bias*
.
"0
#1
$2
%3
&4
'5*
.
"0
#1
$2
%3
&4
'5*
* 
Ш
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*
:
÷trace_0
„trace_1
Ўtrace_2
ўtrace_3* 
:
Џtrace_0
џtrace_1
№trace_2
Ёtrace_3* 

(0
)1*

j	variables*

*0
+1*

l	variables*

,0
-1*

n	variables*

.0
/1*

p	variables*

00
11*

r	variables*

20
31*

t	variables*

40
51*

v	variables*

60
71*

x	variables*

80
91*

z	variables*

:0
;1*

|	variables*

<0
=1*

~	variables*

>0
?1*

А	variables*

@0
A1*

В	variables*

B0
C1*

Д	variables*

D0
E1*

Ж	variables*
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
Ю
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses*

гtrace_0* 

дtrace_0* 
* 
* 
* 
Ь
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses* 

кtrace_0
лtrace_1* 

мtrace_0
нtrace_1* 
* 
* 
* 
Ь
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses* 

уtrace_0
фtrace_1* 

хtrace_0
цtrace_1* 

0
1*

0
1*
* 
Ю
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
†	variables
°trainable_variables
Ґregularization_losses
§__call__
+•&call_and_return_all_conditional_losses
'•"call_and_return_conditional_losses*

ьtrace_0* 

эtrace_0* 

 0
!1*

 0
!1*
* 
Ю
юnon_trainable_variables
€layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
¶	variables
Іtrainable_variables
®regularization_losses
™__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses*

Гtrace_0* 

Дtrace_0* 
* 
* 
* 
Ь
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
ђ	variables
≠trainable_variables
Ѓregularization_losses
∞__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses* 

Кtrace_0* 

Лtrace_0* 
* 
5
S0
T1
U2
V3
W4
X5
Y6*
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
"0
#1*

"0
#1*
* 
Ю
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
њ	variables
јtrainable_variables
Ѕregularization_losses
√__call__
+ƒ&call_and_return_all_conditional_losses
'ƒ"call_and_return_conditional_losses*

Сtrace_0* 

Тtrace_0* 

$0
%1*

$0
%1*
* 
Ю
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
≈	variables
∆trainable_variables
«regularization_losses
…__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses*

Шtrace_0* 

Щtrace_0* 

&0
'1*

&0
'1*
* 
Ю
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Ћ	variables
ћtrainable_variables
Ќregularization_losses
ѕ__call__
+–&call_and_return_all_conditional_losses
'–"call_and_return_conditional_losses*

Яtrace_0* 

†trace_0* 
* 
 
`0
a1
b2
c3*
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
pj
VARIABLE_VALUEAdam/z_mean/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/z_mean/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/z_log_var/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/z_log_var/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEAdam/h4/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/h4/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/cont_decoder_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/cont_decoder_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE#Adam/classification_output/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/classification_output/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEAdam/h1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/h1/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/z_mean/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/z_mean/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/z_log_var/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/z_log_var/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEAdam/h4/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/h4/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/cont_decoder_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/cont_decoder_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE#Adam/classification_output/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/classification_output/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
т
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameh1/kernel/Read/ReadVariableOph1/bias/Read/ReadVariableOp!z_mean/kernel/Read/ReadVariableOpz_mean/bias/Read/ReadVariableOp$z_log_var/kernel/Read/ReadVariableOp"z_log_var/bias/Read/ReadVariableOph4/kernel/Read/ReadVariableOph4/bias/Read/ReadVariableOp.cont_decoder_output/kernel/Read/ReadVariableOp,cont_decoder_output/bias/Read/ReadVariableOp0classification_output/kernel/Read/ReadVariableOp.classification_output/bias/Read/ReadVariableOptotal_14/Read/ReadVariableOpcount_14/Read/ReadVariableOptotal_13/Read/ReadVariableOpcount_13/Read/ReadVariableOptotal_12/Read/ReadVariableOpcount_12/Read/ReadVariableOptotal_11/Read/ReadVariableOpcount_11/Read/ReadVariableOptotal_10/Read/ReadVariableOpcount_10/Read/ReadVariableOptotal_9/Read/ReadVariableOpcount_9/Read/ReadVariableOptotal_8/Read/ReadVariableOpcount_8/Read/ReadVariableOptotal_7/Read/ReadVariableOpcount_7/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp$Adam/h1/kernel/m/Read/ReadVariableOp"Adam/h1/bias/m/Read/ReadVariableOp(Adam/z_mean/kernel/m/Read/ReadVariableOp&Adam/z_mean/bias/m/Read/ReadVariableOp+Adam/z_log_var/kernel/m/Read/ReadVariableOp)Adam/z_log_var/bias/m/Read/ReadVariableOp$Adam/h4/kernel/m/Read/ReadVariableOp"Adam/h4/bias/m/Read/ReadVariableOp5Adam/cont_decoder_output/kernel/m/Read/ReadVariableOp3Adam/cont_decoder_output/bias/m/Read/ReadVariableOp7Adam/classification_output/kernel/m/Read/ReadVariableOp5Adam/classification_output/bias/m/Read/ReadVariableOp$Adam/h1/kernel/v/Read/ReadVariableOp"Adam/h1/bias/v/Read/ReadVariableOp(Adam/z_mean/kernel/v/Read/ReadVariableOp&Adam/z_mean/bias/v/Read/ReadVariableOp+Adam/z_log_var/kernel/v/Read/ReadVariableOp)Adam/z_log_var/bias/v/Read/ReadVariableOp$Adam/h4/kernel/v/Read/ReadVariableOp"Adam/h4/bias/v/Read/ReadVariableOp5Adam/cont_decoder_output/kernel/v/Read/ReadVariableOp3Adam/cont_decoder_output/bias/v/Read/ReadVariableOp7Adam/classification_output/kernel/v/Read/ReadVariableOp5Adam/classification_output/bias/v/Read/ReadVariableOpConst*T
TinM
K2I	*
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_1188233
б
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	h1/kernelh1/biasz_mean/kernelz_mean/biasz_log_var/kernelz_log_var/bias	h4/kernelh4/biascont_decoder_output/kernelcont_decoder_output/biasclassification_output/kernelclassification_output/biastotal_14count_14total_13count_13total_12count_12total_11count_11total_10count_10total_9count_9total_8count_8total_7count_7total_6count_6total_5count_5total_4count_4total_3count_3total_2count_2total_1count_1totalcount	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/h1/kernel/mAdam/h1/bias/mAdam/z_mean/kernel/mAdam/z_mean/bias/mAdam/z_log_var/kernel/mAdam/z_log_var/bias/mAdam/h4/kernel/mAdam/h4/bias/m!Adam/cont_decoder_output/kernel/mAdam/cont_decoder_output/bias/m#Adam/classification_output/kernel/m!Adam/classification_output/bias/mAdam/h1/kernel/vAdam/h1/bias/vAdam/z_mean/kernel/vAdam/z_mean/bias/vAdam/z_log_var/kernel/vAdam/z_log_var/bias/vAdam/h4/kernel/vAdam/h4/bias/v!Adam/cont_decoder_output/kernel/vAdam/cont_decoder_output/bias/v#Adam/classification_output/kernel/v!Adam/classification_output/bias/v*S
TinL
J2H*
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_1188456ДЇ
Ђ
f
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1187841

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
valueB"    А   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ю

т
?__inference_h1_layer_call_and_return_conditional_losses_1187815

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ђ
f
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1187833

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
valueB"    А   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
’
б
D__inference_decoder_layer_call_and_return_conditional_losses_1187770

inputs4
!h4_matmul_readvariableop_resource:	А1
"h4_biasadd_readvariableop_resource:	АG
4classification_output_matmul_readvariableop_resource:	АC
5classification_output_biasadd_readvariableop_resource:E
2cont_decoder_output_matmul_readvariableop_resource:	АA
3cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1ИҐ,classification_output/BiasAdd/ReadVariableOpҐ+classification_output/MatMul/ReadVariableOpҐ*cont_decoder_output/BiasAdd/ReadVariableOpҐ)cont_decoder_output/MatMul/ReadVariableOpҐh4/BiasAdd/ReadVariableOpҐh4/MatMul/ReadVariableOp{
h4/MatMul/ReadVariableOpReadVariableOp!h4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0p
	h4/MatMulMatMulinputs h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
h4/BiasAdd/ReadVariableOpReadVariableOp"h4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А

h4/BiasAddBiasAddh4/MatMul:product:0!h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АW
h4/ReluReluh4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А°
+classification_output/MatMul/ReadVariableOpReadVariableOp4classification_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0§
classification_output/MatMulMatMulh4/Relu:activations:03classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,classification_output/BiasAdd/ReadVariableOpReadVariableOp5classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
classification_output/BiasAddBiasAdd&classification_output/MatMul:product:04classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
classification_output/SigmoidSigmoid&classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Э
)cont_decoder_output/MatMul/ReadVariableOpReadVariableOp2cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0†
cont_decoder_output/MatMulMatMulh4/Relu:activations:01cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
*cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOp3cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0≤
cont_decoder_output/BiasAddBiasAdd$cont_decoder_output/MatMul:product:02cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€s
IdentityIdentity$cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€r

Identity_1Identity!classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€≥
NoOpNoOp-^classification_output/BiasAdd/ReadVariableOp,^classification_output/MatMul/ReadVariableOp+^cont_decoder_output/BiasAdd/ReadVariableOp*^cont_decoder_output/MatMul/ReadVariableOp^h4/BiasAdd/ReadVariableOp^h4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2\
,classification_output/BiasAdd/ReadVariableOp,classification_output/BiasAdd/ReadVariableOp2Z
+classification_output/MatMul/ReadVariableOp+classification_output/MatMul/ReadVariableOp2X
*cont_decoder_output/BiasAdd/ReadVariableOp*cont_decoder_output/BiasAdd/ReadVariableOp2V
)cont_decoder_output/MatMul/ReadVariableOp)cont_decoder_output/MatMul/ReadVariableOp26
h4/BiasAdd/ReadVariableOph4/BiasAdd/ReadVariableOp24
h4/MatMul/ReadVariableOph4/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѓ
 
B__inference_vae_1_layer_call_and_return_conditional_losses_1187276
input_1"
encoder_1187245:	А
encoder_1187247:	А"
encoder_1187249:	А
encoder_1187251:"
encoder_1187253:	А
encoder_1187255:"
decoder_1187260:	А
decoder_1187262:	А"
decoder_1187264:	А
decoder_1187266:"
decoder_1187268:	А
decoder_1187270:
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallд
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_1187245encoder_1187247encoder_1187249encoder_1187251encoder_1187253encoder_1187255*
Tin
	2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_1186596с
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2decoder_1187260decoder_1187262decoder_1187264decoder_1187266decoder_1187268decoder_1187270*
Tin
	2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_1186884w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€К
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
Е
в
D__inference_decoder_layer_call_and_return_conditional_losses_1186972

inputs

h4_1186955:	А

h4_1186957:	А0
classification_output_1186960:	А+
classification_output_1186962:.
cont_decoder_output_1186965:	А)
cont_decoder_output_1186967:
identity

identity_1ИҐ-classification_output/StatefulPartitionedCallҐ+cont_decoder_output/StatefulPartitionedCallҐh4/StatefulPartitionedCall№
h4/StatefulPartitionedCallStatefulPartitionedCallinputs
h4_1186955
h4_1186957*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_1186843ƒ
-classification_output/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0classification_output_1186960classification_output_1186962*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_1186860Љ
+cont_decoder_output/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0cont_decoder_output_1186965cont_decoder_output_1186967*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1186876Г
IdentityIdentity4cont_decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€З

Identity_1Identity6classification_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ѕ
NoOpNoOp.^classification_output/StatefulPartitionedCall,^cont_decoder_output/StatefulPartitionedCall^h4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2^
-classification_output/StatefulPartitionedCall-classification_output/StatefulPartitionedCall2Z
+cont_decoder_output/StatefulPartitionedCall+cont_decoder_output/StatefulPartitionedCall28
h4/StatefulPartitionedCallh4/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ƒv
Й
 __inference__traced_save_1188233
file_prefix(
$savev2_h1_kernel_read_readvariableop&
"savev2_h1_bias_read_readvariableop,
(savev2_z_mean_kernel_read_readvariableop*
&savev2_z_mean_bias_read_readvariableop/
+savev2_z_log_var_kernel_read_readvariableop-
)savev2_z_log_var_bias_read_readvariableop(
$savev2_h4_kernel_read_readvariableop&
"savev2_h4_bias_read_readvariableop9
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
)savev2_adam_h1_bias_m_read_readvariableop3
/savev2_adam_z_mean_kernel_m_read_readvariableop1
-savev2_adam_z_mean_bias_m_read_readvariableop6
2savev2_adam_z_log_var_kernel_m_read_readvariableop4
0savev2_adam_z_log_var_bias_m_read_readvariableop/
+savev2_adam_h4_kernel_m_read_readvariableop-
)savev2_adam_h4_bias_m_read_readvariableop@
<savev2_adam_cont_decoder_output_kernel_m_read_readvariableop>
:savev2_adam_cont_decoder_output_bias_m_read_readvariableopB
>savev2_adam_classification_output_kernel_m_read_readvariableop@
<savev2_adam_classification_output_bias_m_read_readvariableop/
+savev2_adam_h1_kernel_v_read_readvariableop-
)savev2_adam_h1_bias_v_read_readvariableop3
/savev2_adam_z_mean_kernel_v_read_readvariableop1
-savev2_adam_z_mean_bias_v_read_readvariableop6
2savev2_adam_z_log_var_kernel_v_read_readvariableop4
0savev2_adam_z_log_var_bias_v_read_readvariableop/
+savev2_adam_h4_kernel_v_read_readvariableop-
)savev2_adam_h4_bias_v_read_readvariableop@
<savev2_adam_cont_decoder_output_kernel_v_read_readvariableop>
:savev2_adam_cont_decoder_output_bias_v_read_readvariableopB
>savev2_adam_classification_output_kernel_v_read_readvariableop@
<savev2_adam_classification_output_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Г
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*ђ
valueҐBЯHB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHА
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*•
valueЫBШHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ч
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_h1_kernel_read_readvariableop"savev2_h1_bias_read_readvariableop(savev2_z_mean_kernel_read_readvariableop&savev2_z_mean_bias_read_readvariableop+savev2_z_log_var_kernel_read_readvariableop)savev2_z_log_var_bias_read_readvariableop$savev2_h4_kernel_read_readvariableop"savev2_h4_bias_read_readvariableop5savev2_cont_decoder_output_kernel_read_readvariableop3savev2_cont_decoder_output_bias_read_readvariableop7savev2_classification_output_kernel_read_readvariableop5savev2_classification_output_bias_read_readvariableop#savev2_total_14_read_readvariableop#savev2_count_14_read_readvariableop#savev2_total_13_read_readvariableop#savev2_count_13_read_readvariableop#savev2_total_12_read_readvariableop#savev2_count_12_read_readvariableop#savev2_total_11_read_readvariableop#savev2_count_11_read_readvariableop#savev2_total_10_read_readvariableop#savev2_count_10_read_readvariableop"savev2_total_9_read_readvariableop"savev2_count_9_read_readvariableop"savev2_total_8_read_readvariableop"savev2_count_8_read_readvariableop"savev2_total_7_read_readvariableop"savev2_count_7_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop+savev2_adam_h1_kernel_m_read_readvariableop)savev2_adam_h1_bias_m_read_readvariableop/savev2_adam_z_mean_kernel_m_read_readvariableop-savev2_adam_z_mean_bias_m_read_readvariableop2savev2_adam_z_log_var_kernel_m_read_readvariableop0savev2_adam_z_log_var_bias_m_read_readvariableop+savev2_adam_h4_kernel_m_read_readvariableop)savev2_adam_h4_bias_m_read_readvariableop<savev2_adam_cont_decoder_output_kernel_m_read_readvariableop:savev2_adam_cont_decoder_output_bias_m_read_readvariableop>savev2_adam_classification_output_kernel_m_read_readvariableop<savev2_adam_classification_output_bias_m_read_readvariableop+savev2_adam_h1_kernel_v_read_readvariableop)savev2_adam_h1_bias_v_read_readvariableop/savev2_adam_z_mean_kernel_v_read_readvariableop-savev2_adam_z_mean_bias_v_read_readvariableop2savev2_adam_z_log_var_kernel_v_read_readvariableop0savev2_adam_z_log_var_bias_v_read_readvariableop+savev2_adam_h4_kernel_v_read_readvariableop)savev2_adam_h4_bias_v_read_readvariableop<savev2_adam_cont_decoder_output_kernel_v_read_readvariableop:savev2_adam_cont_decoder_output_bias_v_read_readvariableop>savev2_adam_classification_output_kernel_v_read_readvariableop<savev2_adam_classification_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *V
dtypesL
J2H	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Ч
_input_shapesЕ
В: :	А:А:	А::	А::	А:А:	А::	А:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :	А:А:	А::	А::	А:А:	А::	А::	А:А:	А::	А::	А:А:	А::	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::%!

_output_shapes
:	А: 

_output_shapes
::%!

_output_shapes
:	А:!

_output_shapes	
:А:%	!

_output_shapes
:	А: 


_output_shapes
::%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :%0!

_output_shapes
:	А:!1

_output_shapes	
:А:%2!

_output_shapes
:	А: 3

_output_shapes
::%4!

_output_shapes
:	А: 5

_output_shapes
::%6!

_output_shapes
:	А:!7

_output_shapes	
:А:%8!

_output_shapes
:	А: 9

_output_shapes
::%:!

_output_shapes
:	А: ;

_output_shapes
::%<!

_output_shapes
:	А:!=

_output_shapes	
:А:%>!

_output_shapes
:	А: ?

_output_shapes
::%@!

_output_shapes
:	А: A

_output_shapes
::%B!

_output_shapes
:	А:!C

_output_shapes	
:А:%D!

_output_shapes
:	А: E

_output_shapes
::%F!

_output_shapes
:	А: G

_output_shapes
::H

_output_shapes
: 
™
e
I__inference_select_z_var_layer_call_and_return_conditional_losses_1186677

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    А   f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ђ
J
.__inference_select_z_var_layer_call_fn_1187851

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_1186677a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
в
¶
)__inference_encoder_layer_call_fn_1187599

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
identity

identity_1

identity_2ИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_1186737o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ю

т
?__inference_h4_layer_call_and_return_conditional_losses_1187957

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ђ

Ч
)__inference_decoder_layer_call_fn_1187008
input_2
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
identity

identity_1ИҐStatefulPartitionedCallҐ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_1186972o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
Ќ	
ш
F__inference_z_log_var_layer_call_and_return_conditional_losses_1186559

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ђ
J
.__inference_select_z_var_layer_call_fn_1187846

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_1186521a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
®

Ц
)__inference_decoder_layer_call_fn_1187745

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
identity

identity_1ИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_1186972o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
„	
В
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1186876

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
™a
©
B__inference_vae_1_layer_call_and_return_conditional_losses_1187557

inputs<
)encoder_h1_matmul_readvariableop_resource:	А9
*encoder_h1_biasadd_readvariableop_resource:	А@
-encoder_z_mean_matmul_readvariableop_resource:	А<
.encoder_z_mean_biasadd_readvariableop_resource:C
0encoder_z_log_var_matmul_readvariableop_resource:	А?
1encoder_z_log_var_biasadd_readvariableop_resource:<
)decoder_h4_matmul_readvariableop_resource:	А9
*decoder_h4_biasadd_readvariableop_resource:	АO
<decoder_classification_output_matmul_readvariableop_resource:	АK
=decoder_classification_output_biasadd_readvariableop_resource:M
:decoder_cont_decoder_output_matmul_readvariableop_resource:	АI
;decoder_cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1ИҐ4decoder/classification_output/BiasAdd/ReadVariableOpҐ3decoder/classification_output/MatMul/ReadVariableOpҐ2decoder/cont_decoder_output/BiasAdd/ReadVariableOpҐ1decoder/cont_decoder_output/MatMul/ReadVariableOpҐ!decoder/h4/BiasAdd/ReadVariableOpҐ decoder/h4/MatMul/ReadVariableOpҐ!encoder/h1/BiasAdd/ReadVariableOpҐ encoder/h1/MatMul/ReadVariableOpҐ(encoder/z_log_var/BiasAdd/ReadVariableOpҐ'encoder/z_log_var/MatMul/ReadVariableOpҐ%encoder/z_mean/BiasAdd/ReadVariableOpҐ$encoder/z_mean/MatMul/ReadVariableOpЛ
 encoder/h1/MatMul/ReadVariableOpReadVariableOp)encoder_h1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0А
encoder/h1/MatMulMatMulinputs(encoder/h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
!encoder/h1/BiasAdd/ReadVariableOpReadVariableOp*encoder_h1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ш
encoder/h1/BiasAddBiasAddencoder/h1/MatMul:product:0)encoder/h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
encoder/h1/ReluReluencoder/h1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
(encoder/select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    А   {
*encoder/select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*encoder/select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
"encoder/select_z_var/strided_sliceStridedSliceencoder/h1/Relu:activations:01encoder/select_z_var/strided_slice/stack:output:03encoder/select_z_var/strided_slice/stack_1:output:03encoder/select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

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
valueB"    А   |
+encoder/select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
#encoder/select_z_mean/strided_sliceStridedSliceencoder/h1/Relu:activations:02encoder/select_z_mean/strided_slice/stack:output:04encoder/select_z_mean/strided_slice/stack_1:output:04encoder/select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_maskУ
$encoder/z_mean/MatMul/ReadVariableOpReadVariableOp-encoder_z_mean_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0≠
encoder/z_mean/MatMulMatMul,encoder/select_z_mean/strided_slice:output:0,encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Р
%encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp.encoder_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
encoder/z_mean/BiasAddBiasAddencoder/z_mean/MatMul:product:0-encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Щ
'encoder/z_log_var/MatMul/ReadVariableOpReadVariableOp0encoder_z_log_var_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0≤
encoder/z_log_var/MatMulMatMul+encoder/select_z_var/strided_slice:output:0/encoder/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ц
(encoder/z_log_var/BiasAdd/ReadVariableOpReadVariableOp1encoder_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ђ
encoder/z_log_var/BiasAddBiasAdd"encoder/z_log_var/MatMul:product:00encoder/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€e
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
valueB:¶
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
valueB:∞
 encoder/Sampling/strided_slice_1StridedSlice!encoder/Sampling/Shape_1:output:0/encoder/Sampling/strided_slice_1/stack:output:01encoder/Sampling/strided_slice_1/stack_1:output:01encoder/Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЃ
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
 *  А?„
3encoder/Sampling/random_normal/RandomStandardNormalRandomStandardNormal-encoder/Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0*
seed±€е)*
seed2ѕыo…
"encoder/Sampling/random_normal/mulMul<encoder/Sampling/random_normal/RandomStandardNormal:output:0.encoder/Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:€€€€€€€€€ѓ
encoder/Sampling/random_normalAddV2&encoder/Sampling/random_normal/mul:z:0,encoder/Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
encoder/Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Т
encoder/Sampling/mulMulencoder/Sampling/mul/x:output:0"encoder/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€g
encoder/Sampling/ExpExpencoder/Sampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€Н
encoder/Sampling/mul_1Mulencoder/Sampling/Exp:y:0"encoder/Sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€М
encoder/Sampling/addAddV2encoder/z_mean/BiasAdd:output:0encoder/Sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Л
 decoder/h4/MatMul/ReadVariableOpReadVariableOp)decoder_h4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Т
decoder/h4/MatMulMatMulencoder/Sampling/add:z:0(decoder/h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
!decoder/h4/BiasAdd/ReadVariableOpReadVariableOp*decoder_h4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ш
decoder/h4/BiasAddBiasAdddecoder/h4/MatMul:product:0)decoder/h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
decoder/h4/ReluReludecoder/h4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А±
3decoder/classification_output/MatMul/ReadVariableOpReadVariableOp<decoder_classification_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Љ
$decoder/classification_output/MatMulMatMuldecoder/h4/Relu:activations:0;decoder/classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
4decoder/classification_output/BiasAdd/ReadVariableOpReadVariableOp=decoder_classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0–
%decoder/classification_output/BiasAddBiasAdd.decoder/classification_output/MatMul:product:0<decoder/classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
%decoder/classification_output/SigmoidSigmoid.decoder/classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€≠
1decoder/cont_decoder_output/MatMul/ReadVariableOpReadVariableOp:decoder_cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Є
"decoder/cont_decoder_output/MatMulMatMuldecoder/h4/Relu:activations:09decoder/cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€™
2decoder/cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOp;decoder_cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
#decoder/cont_decoder_output/BiasAddBiasAdd,decoder/cont_decoder_output/MatMul:product:0:decoder/cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€{
IdentityIdentity,decoder/cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€z

Identity_1Identity)decoder/classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ќ
NoOpNoOp5^decoder/classification_output/BiasAdd/ReadVariableOp4^decoder/classification_output/MatMul/ReadVariableOp3^decoder/cont_decoder_output/BiasAdd/ReadVariableOp2^decoder/cont_decoder_output/MatMul/ReadVariableOp"^decoder/h4/BiasAdd/ReadVariableOp!^decoder/h4/MatMul/ReadVariableOp"^encoder/h1/BiasAdd/ReadVariableOp!^encoder/h1/MatMul/ReadVariableOp)^encoder/z_log_var/BiasAdd/ReadVariableOp(^encoder/z_log_var/MatMul/ReadVariableOp&^encoder/z_mean/BiasAdd/ReadVariableOp%^encoder/z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 2l
4decoder/classification_output/BiasAdd/ReadVariableOp4decoder/classification_output/BiasAdd/ReadVariableOp2j
3decoder/classification_output/MatMul/ReadVariableOp3decoder/classification_output/MatMul/ReadVariableOp2h
2decoder/cont_decoder_output/BiasAdd/ReadVariableOp2decoder/cont_decoder_output/BiasAdd/ReadVariableOp2f
1decoder/cont_decoder_output/MatMul/ReadVariableOp1decoder/cont_decoder_output/MatMul/ReadVariableOp2F
!decoder/h4/BiasAdd/ReadVariableOp!decoder/h4/BiasAdd/ReadVariableOp2D
 decoder/h4/MatMul/ReadVariableOp decoder/h4/MatMul/ReadVariableOp2F
!encoder/h1/BiasAdd/ReadVariableOp!encoder/h1/BiasAdd/ReadVariableOp2D
 encoder/h1/MatMul/ReadVariableOp encoder/h1/MatMul/ReadVariableOp2T
(encoder/z_log_var/BiasAdd/ReadVariableOp(encoder/z_log_var/BiasAdd/ReadVariableOp2R
'encoder/z_log_var/MatMul/ReadVariableOp'encoder/z_log_var/MatMul/ReadVariableOp2N
%encoder/z_mean/BiasAdd/ReadVariableOp%encoder/z_mean/BiasAdd/ReadVariableOp2L
$encoder/z_mean/MatMul/ReadVariableOp$encoder/z_mean/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
√
Ц
(__inference_z_mean_layer_call_fn_1187876

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_1186543o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
™
e
I__inference_select_z_var_layer_call_and_return_conditional_losses_1187859

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    А   f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ђ

Д
R__inference_classification_output_layer_call_and_return_conditional_losses_1186860

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ИЙ
С(
#__inference__traced_restore_1188456
file_prefix-
assignvariableop_h1_kernel:	А)
assignvariableop_1_h1_bias:	А3
 assignvariableop_2_z_mean_kernel:	А,
assignvariableop_3_z_mean_bias:6
#assignvariableop_4_z_log_var_kernel:	А/
!assignvariableop_5_z_log_var_bias:/
assignvariableop_6_h4_kernel:	А)
assignvariableop_7_h4_bias:	А@
-assignvariableop_8_cont_decoder_output_kernel:	А9
+assignvariableop_9_cont_decoder_output_bias:C
0assignvariableop_10_classification_output_kernel:	А<
.assignvariableop_11_classification_output_bias:&
assignvariableop_12_total_14: &
assignvariableop_13_count_14: &
assignvariableop_14_total_13: &
assignvariableop_15_count_13: &
assignvariableop_16_total_12: &
assignvariableop_17_count_12: &
assignvariableop_18_total_11: &
assignvariableop_19_count_11: &
assignvariableop_20_total_10: &
assignvariableop_21_count_10: %
assignvariableop_22_total_9: %
assignvariableop_23_count_9: %
assignvariableop_24_total_8: %
assignvariableop_25_count_8: %
assignvariableop_26_total_7: %
assignvariableop_27_count_7: %
assignvariableop_28_total_6: %
assignvariableop_29_count_6: %
assignvariableop_30_total_5: %
assignvariableop_31_count_5: %
assignvariableop_32_total_4: %
assignvariableop_33_count_4: %
assignvariableop_34_total_3: %
assignvariableop_35_count_3: %
assignvariableop_36_total_2: %
assignvariableop_37_count_2: %
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: '
assignvariableop_42_adam_iter:	 )
assignvariableop_43_adam_beta_1: )
assignvariableop_44_adam_beta_2: (
assignvariableop_45_adam_decay: 0
&assignvariableop_46_adam_learning_rate: 7
$assignvariableop_47_adam_h1_kernel_m:	А1
"assignvariableop_48_adam_h1_bias_m:	А;
(assignvariableop_49_adam_z_mean_kernel_m:	А4
&assignvariableop_50_adam_z_mean_bias_m:>
+assignvariableop_51_adam_z_log_var_kernel_m:	А7
)assignvariableop_52_adam_z_log_var_bias_m:7
$assignvariableop_53_adam_h4_kernel_m:	А1
"assignvariableop_54_adam_h4_bias_m:	АH
5assignvariableop_55_adam_cont_decoder_output_kernel_m:	АA
3assignvariableop_56_adam_cont_decoder_output_bias_m:J
7assignvariableop_57_adam_classification_output_kernel_m:	АC
5assignvariableop_58_adam_classification_output_bias_m:7
$assignvariableop_59_adam_h1_kernel_v:	А1
"assignvariableop_60_adam_h1_bias_v:	А;
(assignvariableop_61_adam_z_mean_kernel_v:	А4
&assignvariableop_62_adam_z_mean_bias_v:>
+assignvariableop_63_adam_z_log_var_kernel_v:	А7
)assignvariableop_64_adam_z_log_var_bias_v:7
$assignvariableop_65_adam_h4_kernel_v:	А1
"assignvariableop_66_adam_h4_bias_v:	АH
5assignvariableop_67_adam_cont_decoder_output_kernel_v:	АA
3assignvariableop_68_adam_cont_decoder_output_bias_v:J
7assignvariableop_69_adam_classification_output_kernel_v:	АC
5assignvariableop_70_adam_classification_output_bias_v:
identity_72ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_8ҐAssignVariableOp_9Ж
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*ђ
valueҐBЯHB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHГ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*•
valueЫBШHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Й
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ґ
_output_shapes£
†::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*V
dtypesL
J2H	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOpAssignVariableOpassignvariableop_h1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_1AssignVariableOpassignvariableop_1_h1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_2AssignVariableOp assignvariableop_2_z_mean_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_3AssignVariableOpassignvariableop_3_z_mean_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp#assignvariableop_4_z_log_var_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_5AssignVariableOp!assignvariableop_5_z_log_var_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_6AssignVariableOpassignvariableop_6_h4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_7AssignVariableOpassignvariableop_7_h4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_8AssignVariableOp-assignvariableop_8_cont_decoder_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_9AssignVariableOp+assignvariableop_9_cont_decoder_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_10AssignVariableOp0assignvariableop_10_classification_output_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_11AssignVariableOp.assignvariableop_11_classification_output_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_14Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_14Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_13Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_13Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_12Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_12Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_11Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_11Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_10Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_10Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_9Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_9Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_8Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_8Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_7Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_7Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_28AssignVariableOpassignvariableop_28_total_6Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_29AssignVariableOpassignvariableop_29_count_6Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_30AssignVariableOpassignvariableop_30_total_5Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_31AssignVariableOpassignvariableop_31_count_5Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_4Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_4Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_34AssignVariableOpassignvariableop_34_total_3Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_35AssignVariableOpassignvariableop_35_count_3Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_36AssignVariableOpassignvariableop_36_total_2Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_37AssignVariableOpassignvariableop_37_count_2Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_42AssignVariableOpassignvariableop_42_adam_iterIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_43AssignVariableOpassignvariableop_43_adam_beta_1Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_44AssignVariableOpassignvariableop_44_adam_beta_2Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_45AssignVariableOpassignvariableop_45_adam_decayIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_learning_rateIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_47AssignVariableOp$assignvariableop_47_adam_h1_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_48AssignVariableOp"assignvariableop_48_adam_h1_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_z_mean_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_z_mean_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_z_log_var_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_z_log_var_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_53AssignVariableOp$assignvariableop_53_adam_h4_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_54AssignVariableOp"assignvariableop_54_adam_h4_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_55AssignVariableOp5assignvariableop_55_adam_cont_decoder_output_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_56AssignVariableOp3assignvariableop_56_adam_cont_decoder_output_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_57AssignVariableOp7assignvariableop_57_adam_classification_output_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_58AssignVariableOp5assignvariableop_58_adam_classification_output_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_59AssignVariableOp$assignvariableop_59_adam_h1_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_60AssignVariableOp"assignvariableop_60_adam_h1_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_z_mean_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_62AssignVariableOp&assignvariableop_62_adam_z_mean_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_z_log_var_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_z_log_var_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_65AssignVariableOp$assignvariableop_65_adam_h4_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_66AssignVariableOp"assignvariableop_66_adam_h4_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_67AssignVariableOp5assignvariableop_67_adam_cont_decoder_output_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_68AssignVariableOp3assignvariableop_68_adam_cont_decoder_output_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_classification_output_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_70AssignVariableOp5assignvariableop_70_adam_classification_output_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 й
Identity_71Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_72IdentityIdentity_71:output:0^NoOp_1*
T0*
_output_shapes
: ÷
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_72Identity_72:output:0*•
_input_shapesУ
Р: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_70AssignVariableOp_702(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
с
Ђ
)__inference_encoder_layer_call_fn_1186777
input_layer
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
identity

identity_1

identity_2ИҐStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_1186737o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:€€€€€€€€€
%
_user_specified_nameinput_layer
Ђ
f
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1186531

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
valueB"    А   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ќ	
ш
F__inference_z_log_var_layer_call_and_return_conditional_losses_1187905

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
с
Ђ
)__inference_encoder_layer_call_fn_1186615
input_layer
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
identity

identity_1

identity_2ИҐStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_1186596o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:€€€€€€€€€
%
_user_specified_nameinput_layer
ѓ
 
B__inference_vae_1_layer_call_and_return_conditional_losses_1187310
input_1"
encoder_1187279:	А
encoder_1187281:	А"
encoder_1187283:	А
encoder_1187285:"
encoder_1187287:	А
encoder_1187289:"
decoder_1187294:	А
decoder_1187296:	А"
decoder_1187298:	А
decoder_1187300:"
decoder_1187302:	А
decoder_1187304:
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallд
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_1187279encoder_1187281encoder_1187283encoder_1187285encoder_1187287encoder_1187289*
Tin
	2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_1186737с
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2decoder_1187294decoder_1187296decoder_1187298decoder_1187300decoder_1187302decoder_1187304*
Tin
	2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_1186972w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€К
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
Р
 
D__inference_encoder_layer_call_and_return_conditional_losses_1186737

inputs

h1_1186716:	А

h1_1186718:	А!
z_mean_1186723:	А
z_mean_1186725:$
z_log_var_1186728:	А
z_log_var_1186730:
identity

identity_1

identity_2ИҐ Sampling/StatefulPartitionedCallҐh1/StatefulPartitionedCallҐ!z_log_var/StatefulPartitionedCallҐz_mean/StatefulPartitionedCall№
h1/StatefulPartitionedCallStatefulPartitionedCallinputs
h1_1186716
h1_1186718*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_1186507я
select_z_var/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_1186677б
select_z_mean/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1186658Л
z_mean/StatefulPartitionedCallStatefulPartitionedCall&select_z_mean/PartitionedCall:output:0z_mean_1186723z_mean_1186725*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_1186543Ц
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall%select_z_var/PartitionedCall:output:0z_log_var_1186728z_log_var_1186730*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_1186559Ч
 Sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_1186591v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€{

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€z

Identity_2Identity)Sampling/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ћ
NoOpNoOp!^Sampling/StatefulPartitionedCall^h1/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2D
 Sampling/StatefulPartitionedCall Sampling/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
…
Щ
+__inference_z_log_var_layer_call_fn_1187895

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_1186559o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ц
s
*__inference_Sampling_layer_call_fn_1187911
inputs_0
inputs_1
identityИҐStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_1186591o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
Ё
£
5__inference_cont_decoder_output_layer_call_fn_1187966

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1186876o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
З
t
E__inference_Sampling_layer_call_and_return_conditional_losses_1187937
inputs_0
inputs_1
identityИ=
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
valueB:—
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
valueB:џ
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
 *  А?µ
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0*
seed±€е)*
seed2ЬФ Ц
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:€€€€€€€€€E
ExpExpmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€S
addAddV2inputs_0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
ь
r
E__inference_Sampling_layer_call_and_return_conditional_losses_1186591

inputs
inputs_1
identityИ;
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
valueB:—
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
valueB:џ
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
 *  А?ґ
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0*
seed±€е)*
seed2 ф√Ц
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:€€€€€€€€€E
ExpExpmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€Q
addAddV2inputs	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
в
¶
)__inference_encoder_layer_call_fn_1187578

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
identity

identity_1

identity_2ИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_1186596o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≠
K
/__inference_select_z_mean_layer_call_fn_1187825

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1186658a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
 	
х
C__inference_z_mean_layer_call_and_return_conditional_losses_1186543

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¶
ї
'__inference_vae_1_layer_call_fn_1187380

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
	unknown_5:	А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
	unknown_9:	А

unknown_10:
identity

identity_1ИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_vae_1_layer_call_and_return_conditional_losses_1187086o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¶
ї
'__inference_vae_1_layer_call_fn_1187411

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
	unknown_5:	А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
	unknown_9:	А

unknown_10:
identity

identity_1ИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_vae_1_layer_call_and_return_conditional_losses_1187182o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
б
•
7__inference_classification_output_layer_call_fn_1187985

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_1186860o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ђ

Д
R__inference_classification_output_layer_call_and_return_conditional_losses_1187996

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
З
Ї
%__inference_signature_wrapper_1187349
input_1
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
	unknown_5:	А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
	unknown_9:	А

unknown_10:
identity

identity_1ИҐStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_1186489o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
Ђ

Ч
)__inference_decoder_layer_call_fn_1186901
input_2
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
identity

identity_1ИҐStatefulPartitionedCallҐ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_1186884o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
™
e
I__inference_select_z_var_layer_call_and_return_conditional_losses_1187867

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    А   f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
©
Љ
'__inference_vae_1_layer_call_fn_1187242
input_1
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
	unknown_5:	А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
	unknown_9:	А

unknown_10:
identity

identity_1ИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_vae_1_layer_call_and_return_conditional_losses_1187182o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
™
e
I__inference_select_z_var_layer_call_and_return_conditional_losses_1186521

inputs
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    А   f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
 	
х
C__inference_z_mean_layer_call_and_return_conditional_losses_1187886

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Љ
У
$__inference_h1_layer_call_fn_1187804

inputs
unknown:	А
	unknown_0:	А
identityИҐStatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_1186507p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’
б
D__inference_decoder_layer_call_and_return_conditional_losses_1187795

inputs4
!h4_matmul_readvariableop_resource:	А1
"h4_biasadd_readvariableop_resource:	АG
4classification_output_matmul_readvariableop_resource:	АC
5classification_output_biasadd_readvariableop_resource:E
2cont_decoder_output_matmul_readvariableop_resource:	АA
3cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1ИҐ,classification_output/BiasAdd/ReadVariableOpҐ+classification_output/MatMul/ReadVariableOpҐ*cont_decoder_output/BiasAdd/ReadVariableOpҐ)cont_decoder_output/MatMul/ReadVariableOpҐh4/BiasAdd/ReadVariableOpҐh4/MatMul/ReadVariableOp{
h4/MatMul/ReadVariableOpReadVariableOp!h4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0p
	h4/MatMulMatMulinputs h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
h4/BiasAdd/ReadVariableOpReadVariableOp"h4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А

h4/BiasAddBiasAddh4/MatMul:product:0!h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АW
h4/ReluReluh4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А°
+classification_output/MatMul/ReadVariableOpReadVariableOp4classification_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0§
classification_output/MatMulMatMulh4/Relu:activations:03classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,classification_output/BiasAdd/ReadVariableOpReadVariableOp5classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
classification_output/BiasAddBiasAdd&classification_output/MatMul:product:04classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
classification_output/SigmoidSigmoid&classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Э
)cont_decoder_output/MatMul/ReadVariableOpReadVariableOp2cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0†
cont_decoder_output/MatMulMatMulh4/Relu:activations:01cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
*cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOp3cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0≤
cont_decoder_output/BiasAddBiasAdd$cont_decoder_output/MatMul:product:02cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€s
IdentityIdentity$cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€r

Identity_1Identity!classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€≥
NoOpNoOp-^classification_output/BiasAdd/ReadVariableOp,^classification_output/MatMul/ReadVariableOp+^cont_decoder_output/BiasAdd/ReadVariableOp*^cont_decoder_output/MatMul/ReadVariableOp^h4/BiasAdd/ReadVariableOp^h4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2\
,classification_output/BiasAdd/ReadVariableOp,classification_output/BiasAdd/ReadVariableOp2Z
+classification_output/MatMul/ReadVariableOp+classification_output/MatMul/ReadVariableOp2X
*cont_decoder_output/BiasAdd/ReadVariableOp*cont_decoder_output/BiasAdd/ReadVariableOp2V
)cont_decoder_output/MatMul/ReadVariableOp)cont_decoder_output/MatMul/ReadVariableOp26
h4/BiasAdd/ReadVariableOph4/BiasAdd/ReadVariableOp24
h4/MatMul/ReadVariableOph4/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
эi
Ъ
"__inference__wrapped_model_1186489
input_1B
/vae_1_encoder_h1_matmul_readvariableop_resource:	А?
0vae_1_encoder_h1_biasadd_readvariableop_resource:	АF
3vae_1_encoder_z_mean_matmul_readvariableop_resource:	АB
4vae_1_encoder_z_mean_biasadd_readvariableop_resource:I
6vae_1_encoder_z_log_var_matmul_readvariableop_resource:	АE
7vae_1_encoder_z_log_var_biasadd_readvariableop_resource:B
/vae_1_decoder_h4_matmul_readvariableop_resource:	А?
0vae_1_decoder_h4_biasadd_readvariableop_resource:	АU
Bvae_1_decoder_classification_output_matmul_readvariableop_resource:	АQ
Cvae_1_decoder_classification_output_biasadd_readvariableop_resource:S
@vae_1_decoder_cont_decoder_output_matmul_readvariableop_resource:	АO
Avae_1_decoder_cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1ИҐ:vae_1/decoder/classification_output/BiasAdd/ReadVariableOpҐ9vae_1/decoder/classification_output/MatMul/ReadVariableOpҐ8vae_1/decoder/cont_decoder_output/BiasAdd/ReadVariableOpҐ7vae_1/decoder/cont_decoder_output/MatMul/ReadVariableOpҐ'vae_1/decoder/h4/BiasAdd/ReadVariableOpҐ&vae_1/decoder/h4/MatMul/ReadVariableOpҐ'vae_1/encoder/h1/BiasAdd/ReadVariableOpҐ&vae_1/encoder/h1/MatMul/ReadVariableOpҐ.vae_1/encoder/z_log_var/BiasAdd/ReadVariableOpҐ-vae_1/encoder/z_log_var/MatMul/ReadVariableOpҐ+vae_1/encoder/z_mean/BiasAdd/ReadVariableOpҐ*vae_1/encoder/z_mean/MatMul/ReadVariableOpЧ
&vae_1/encoder/h1/MatMul/ReadVariableOpReadVariableOp/vae_1_encoder_h1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Н
vae_1/encoder/h1/MatMulMatMulinput_1.vae_1/encoder/h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
'vae_1/encoder/h1/BiasAdd/ReadVariableOpReadVariableOp0vae_1_encoder_h1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0™
vae_1/encoder/h1/BiasAddBiasAdd!vae_1/encoder/h1/MatMul:product:0/vae_1/encoder/h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
vae_1/encoder/h1/ReluRelu!vae_1/encoder/h1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А
.vae_1/encoder/select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    А   Б
0vae_1/encoder/select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0vae_1/encoder/select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
(vae_1/encoder/select_z_var/strided_sliceStridedSlice#vae_1/encoder/h1/Relu:activations:07vae_1/encoder/select_z_var/strided_slice/stack:output:09vae_1/encoder/select_z_var/strided_slice/stack_1:output:09vae_1/encoder/select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_maskА
/vae_1/encoder/select_z_mean/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        В
1vae_1/encoder/select_z_mean/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    А   В
1vae_1/encoder/select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      т
)vae_1/encoder/select_z_mean/strided_sliceStridedSlice#vae_1/encoder/h1/Relu:activations:08vae_1/encoder/select_z_mean/strided_slice/stack:output:0:vae_1/encoder/select_z_mean/strided_slice/stack_1:output:0:vae_1/encoder/select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_maskЯ
*vae_1/encoder/z_mean/MatMul/ReadVariableOpReadVariableOp3vae_1_encoder_z_mean_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0њ
vae_1/encoder/z_mean/MatMulMatMul2vae_1/encoder/select_z_mean/strided_slice:output:02vae_1/encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+vae_1/encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp4vae_1_encoder_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
vae_1/encoder/z_mean/BiasAddBiasAdd%vae_1/encoder/z_mean/MatMul:product:03vae_1/encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€•
-vae_1/encoder/z_log_var/MatMul/ReadVariableOpReadVariableOp6vae_1_encoder_z_log_var_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ƒ
vae_1/encoder/z_log_var/MatMulMatMul1vae_1/encoder/select_z_var/strided_slice:output:05vae_1/encoder/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
.vae_1/encoder/z_log_var/BiasAdd/ReadVariableOpReadVariableOp7vae_1_encoder_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
vae_1/encoder/z_log_var/BiasAddBiasAdd(vae_1/encoder/z_log_var/MatMul:product:06vae_1/encoder/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€q
vae_1/encoder/Sampling/ShapeShape%vae_1/encoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:t
*vae_1/encoder/Sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,vae_1/encoder/Sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,vae_1/encoder/Sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$vae_1/encoder/Sampling/strided_sliceStridedSlice%vae_1/encoder/Sampling/Shape:output:03vae_1/encoder/Sampling/strided_slice/stack:output:05vae_1/encoder/Sampling/strided_slice/stack_1:output:05vae_1/encoder/Sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
vae_1/encoder/Sampling/Shape_1Shape%vae_1/encoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:v
,vae_1/encoder/Sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.vae_1/encoder/Sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.vae_1/encoder/Sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&vae_1/encoder/Sampling/strided_slice_1StridedSlice'vae_1/encoder/Sampling/Shape_1:output:05vae_1/encoder/Sampling/strided_slice_1/stack:output:07vae_1/encoder/Sampling/strided_slice_1/stack_1:output:07vae_1/encoder/Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskј
*vae_1/encoder/Sampling/random_normal/shapePack-vae_1/encoder/Sampling/strided_slice:output:0/vae_1/encoder/Sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:n
)vae_1/encoder/Sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    p
+vae_1/encoder/Sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?д
9vae_1/encoder/Sampling/random_normal/RandomStandardNormalRandomStandardNormal3vae_1/encoder/Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0*
seed±€е)*
seed2г±Иџ
(vae_1/encoder/Sampling/random_normal/mulMulBvae_1/encoder/Sampling/random_normal/RandomStandardNormal:output:04vae_1/encoder/Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ѕ
$vae_1/encoder/Sampling/random_normalAddV2,vae_1/encoder/Sampling/random_normal/mul:z:02vae_1/encoder/Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
vae_1/encoder/Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
vae_1/encoder/Sampling/mulMul%vae_1/encoder/Sampling/mul/x:output:0(vae_1/encoder/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€s
vae_1/encoder/Sampling/ExpExpvae_1/encoder/Sampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€Я
vae_1/encoder/Sampling/mul_1Mulvae_1/encoder/Sampling/Exp:y:0(vae_1/encoder/Sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
vae_1/encoder/Sampling/addAddV2%vae_1/encoder/z_mean/BiasAdd:output:0 vae_1/encoder/Sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ч
&vae_1/decoder/h4/MatMul/ReadVariableOpReadVariableOp/vae_1_decoder_h4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0§
vae_1/decoder/h4/MatMulMatMulvae_1/encoder/Sampling/add:z:0.vae_1/decoder/h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
'vae_1/decoder/h4/BiasAdd/ReadVariableOpReadVariableOp0vae_1_decoder_h4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0™
vae_1/decoder/h4/BiasAddBiasAdd!vae_1/decoder/h4/MatMul:product:0/vae_1/decoder/h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
vae_1/decoder/h4/ReluRelu!vae_1/decoder/h4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аљ
9vae_1/decoder/classification_output/MatMul/ReadVariableOpReadVariableOpBvae_1_decoder_classification_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ќ
*vae_1/decoder/classification_output/MatMulMatMul#vae_1/decoder/h4/Relu:activations:0Avae_1/decoder/classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ї
:vae_1/decoder/classification_output/BiasAdd/ReadVariableOpReadVariableOpCvae_1_decoder_classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0в
+vae_1/decoder/classification_output/BiasAddBiasAdd4vae_1/decoder/classification_output/MatMul:product:0Bvae_1/decoder/classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
+vae_1/decoder/classification_output/SigmoidSigmoid4vae_1/decoder/classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€є
7vae_1/decoder/cont_decoder_output/MatMul/ReadVariableOpReadVariableOp@vae_1_decoder_cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0 
(vae_1/decoder/cont_decoder_output/MatMulMatMul#vae_1/decoder/h4/Relu:activations:0?vae_1/decoder/cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ґ
8vae_1/decoder/cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOpAvae_1_decoder_cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0№
)vae_1/decoder/cont_decoder_output/BiasAddBiasAdd2vae_1/decoder/cont_decoder_output/MatMul:product:0@vae_1/decoder/cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Б
IdentityIdentity2vae_1/decoder/cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€А

Identity_1Identity/vae_1/decoder/classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp;^vae_1/decoder/classification_output/BiasAdd/ReadVariableOp:^vae_1/decoder/classification_output/MatMul/ReadVariableOp9^vae_1/decoder/cont_decoder_output/BiasAdd/ReadVariableOp8^vae_1/decoder/cont_decoder_output/MatMul/ReadVariableOp(^vae_1/decoder/h4/BiasAdd/ReadVariableOp'^vae_1/decoder/h4/MatMul/ReadVariableOp(^vae_1/encoder/h1/BiasAdd/ReadVariableOp'^vae_1/encoder/h1/MatMul/ReadVariableOp/^vae_1/encoder/z_log_var/BiasAdd/ReadVariableOp.^vae_1/encoder/z_log_var/MatMul/ReadVariableOp,^vae_1/encoder/z_mean/BiasAdd/ReadVariableOp+^vae_1/encoder/z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 2x
:vae_1/decoder/classification_output/BiasAdd/ReadVariableOp:vae_1/decoder/classification_output/BiasAdd/ReadVariableOp2v
9vae_1/decoder/classification_output/MatMul/ReadVariableOp9vae_1/decoder/classification_output/MatMul/ReadVariableOp2t
8vae_1/decoder/cont_decoder_output/BiasAdd/ReadVariableOp8vae_1/decoder/cont_decoder_output/BiasAdd/ReadVariableOp2r
7vae_1/decoder/cont_decoder_output/MatMul/ReadVariableOp7vae_1/decoder/cont_decoder_output/MatMul/ReadVariableOp2R
'vae_1/decoder/h4/BiasAdd/ReadVariableOp'vae_1/decoder/h4/BiasAdd/ReadVariableOp2P
&vae_1/decoder/h4/MatMul/ReadVariableOp&vae_1/decoder/h4/MatMul/ReadVariableOp2R
'vae_1/encoder/h1/BiasAdd/ReadVariableOp'vae_1/encoder/h1/BiasAdd/ReadVariableOp2P
&vae_1/encoder/h1/MatMul/ReadVariableOp&vae_1/encoder/h1/MatMul/ReadVariableOp2`
.vae_1/encoder/z_log_var/BiasAdd/ReadVariableOp.vae_1/encoder/z_log_var/BiasAdd/ReadVariableOp2^
-vae_1/encoder/z_log_var/MatMul/ReadVariableOp-vae_1/encoder/z_log_var/MatMul/ReadVariableOp2Z
+vae_1/encoder/z_mean/BiasAdd/ReadVariableOp+vae_1/encoder/z_mean/BiasAdd/ReadVariableOp2X
*vae_1/encoder/z_mean/MatMul/ReadVariableOp*vae_1/encoder/z_mean/MatMul/ReadVariableOp:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
Ђ
f
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1186658

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
valueB"    А   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_mask_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ђa
©
B__inference_vae_1_layer_call_and_return_conditional_losses_1187484

inputs<
)encoder_h1_matmul_readvariableop_resource:	А9
*encoder_h1_biasadd_readvariableop_resource:	А@
-encoder_z_mean_matmul_readvariableop_resource:	А<
.encoder_z_mean_biasadd_readvariableop_resource:C
0encoder_z_log_var_matmul_readvariableop_resource:	А?
1encoder_z_log_var_biasadd_readvariableop_resource:<
)decoder_h4_matmul_readvariableop_resource:	А9
*decoder_h4_biasadd_readvariableop_resource:	АO
<decoder_classification_output_matmul_readvariableop_resource:	АK
=decoder_classification_output_biasadd_readvariableop_resource:M
:decoder_cont_decoder_output_matmul_readvariableop_resource:	АI
;decoder_cont_decoder_output_biasadd_readvariableop_resource:
identity

identity_1ИҐ4decoder/classification_output/BiasAdd/ReadVariableOpҐ3decoder/classification_output/MatMul/ReadVariableOpҐ2decoder/cont_decoder_output/BiasAdd/ReadVariableOpҐ1decoder/cont_decoder_output/MatMul/ReadVariableOpҐ!decoder/h4/BiasAdd/ReadVariableOpҐ decoder/h4/MatMul/ReadVariableOpҐ!encoder/h1/BiasAdd/ReadVariableOpҐ encoder/h1/MatMul/ReadVariableOpҐ(encoder/z_log_var/BiasAdd/ReadVariableOpҐ'encoder/z_log_var/MatMul/ReadVariableOpҐ%encoder/z_mean/BiasAdd/ReadVariableOpҐ$encoder/z_mean/MatMul/ReadVariableOpЛ
 encoder/h1/MatMul/ReadVariableOpReadVariableOp)encoder_h1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0А
encoder/h1/MatMulMatMulinputs(encoder/h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
!encoder/h1/BiasAdd/ReadVariableOpReadVariableOp*encoder_h1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ш
encoder/h1/BiasAddBiasAddencoder/h1/MatMul:product:0)encoder/h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
encoder/h1/ReluReluencoder/h1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
(encoder/select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    А   {
*encoder/select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*encoder/select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
"encoder/select_z_var/strided_sliceStridedSliceencoder/h1/Relu:activations:01encoder/select_z_var/strided_slice/stack:output:03encoder/select_z_var/strided_slice/stack_1:output:03encoder/select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

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
valueB"    А   |
+encoder/select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
#encoder/select_z_mean/strided_sliceStridedSliceencoder/h1/Relu:activations:02encoder/select_z_mean/strided_slice/stack:output:04encoder/select_z_mean/strided_slice/stack_1:output:04encoder/select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_maskУ
$encoder/z_mean/MatMul/ReadVariableOpReadVariableOp-encoder_z_mean_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0≠
encoder/z_mean/MatMulMatMul,encoder/select_z_mean/strided_slice:output:0,encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Р
%encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp.encoder_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
encoder/z_mean/BiasAddBiasAddencoder/z_mean/MatMul:product:0-encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Щ
'encoder/z_log_var/MatMul/ReadVariableOpReadVariableOp0encoder_z_log_var_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0≤
encoder/z_log_var/MatMulMatMul+encoder/select_z_var/strided_slice:output:0/encoder/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ц
(encoder/z_log_var/BiasAdd/ReadVariableOpReadVariableOp1encoder_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ђ
encoder/z_log_var/BiasAddBiasAdd"encoder/z_log_var/MatMul:product:00encoder/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€e
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
valueB:¶
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
valueB:∞
 encoder/Sampling/strided_slice_1StridedSlice!encoder/Sampling/Shape_1:output:0/encoder/Sampling/strided_slice_1/stack:output:01encoder/Sampling/strided_slice_1/stack_1:output:01encoder/Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЃ
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
 *  А?Ў
3encoder/Sampling/random_normal/RandomStandardNormalRandomStandardNormal-encoder/Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0*
seed±€е)*
seed2Ђ≥ў…
"encoder/Sampling/random_normal/mulMul<encoder/Sampling/random_normal/RandomStandardNormal:output:0.encoder/Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:€€€€€€€€€ѓ
encoder/Sampling/random_normalAddV2&encoder/Sampling/random_normal/mul:z:0,encoder/Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
encoder/Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Т
encoder/Sampling/mulMulencoder/Sampling/mul/x:output:0"encoder/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€g
encoder/Sampling/ExpExpencoder/Sampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€Н
encoder/Sampling/mul_1Mulencoder/Sampling/Exp:y:0"encoder/Sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€М
encoder/Sampling/addAddV2encoder/z_mean/BiasAdd:output:0encoder/Sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Л
 decoder/h4/MatMul/ReadVariableOpReadVariableOp)decoder_h4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Т
decoder/h4/MatMulMatMulencoder/Sampling/add:z:0(decoder/h4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
!decoder/h4/BiasAdd/ReadVariableOpReadVariableOp*decoder_h4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ш
decoder/h4/BiasAddBiasAdddecoder/h4/MatMul:product:0)decoder/h4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
decoder/h4/ReluReludecoder/h4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А±
3decoder/classification_output/MatMul/ReadVariableOpReadVariableOp<decoder_classification_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Љ
$decoder/classification_output/MatMulMatMuldecoder/h4/Relu:activations:0;decoder/classification_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
4decoder/classification_output/BiasAdd/ReadVariableOpReadVariableOp=decoder_classification_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0–
%decoder/classification_output/BiasAddBiasAdd.decoder/classification_output/MatMul:product:0<decoder/classification_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
%decoder/classification_output/SigmoidSigmoid.decoder/classification_output/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€≠
1decoder/cont_decoder_output/MatMul/ReadVariableOpReadVariableOp:decoder_cont_decoder_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Є
"decoder/cont_decoder_output/MatMulMatMuldecoder/h4/Relu:activations:09decoder/cont_decoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€™
2decoder/cont_decoder_output/BiasAdd/ReadVariableOpReadVariableOp;decoder_cont_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
#decoder/cont_decoder_output/BiasAddBiasAdd,decoder/cont_decoder_output/MatMul:product:0:decoder/cont_decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€{
IdentityIdentity,decoder/cont_decoder_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€z

Identity_1Identity)decoder/classification_output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ќ
NoOpNoOp5^decoder/classification_output/BiasAdd/ReadVariableOp4^decoder/classification_output/MatMul/ReadVariableOp3^decoder/cont_decoder_output/BiasAdd/ReadVariableOp2^decoder/cont_decoder_output/MatMul/ReadVariableOp"^decoder/h4/BiasAdd/ReadVariableOp!^decoder/h4/MatMul/ReadVariableOp"^encoder/h1/BiasAdd/ReadVariableOp!^encoder/h1/MatMul/ReadVariableOp)^encoder/z_log_var/BiasAdd/ReadVariableOp(^encoder/z_log_var/MatMul/ReadVariableOp&^encoder/z_mean/BiasAdd/ReadVariableOp%^encoder/z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 2l
4decoder/classification_output/BiasAdd/ReadVariableOp4decoder/classification_output/BiasAdd/ReadVariableOp2j
3decoder/classification_output/MatMul/ReadVariableOp3decoder/classification_output/MatMul/ReadVariableOp2h
2decoder/cont_decoder_output/BiasAdd/ReadVariableOp2decoder/cont_decoder_output/BiasAdd/ReadVariableOp2f
1decoder/cont_decoder_output/MatMul/ReadVariableOp1decoder/cont_decoder_output/MatMul/ReadVariableOp2F
!decoder/h4/BiasAdd/ReadVariableOp!decoder/h4/BiasAdd/ReadVariableOp2D
 decoder/h4/MatMul/ReadVariableOp decoder/h4/MatMul/ReadVariableOp2F
!encoder/h1/BiasAdd/ReadVariableOp!encoder/h1/BiasAdd/ReadVariableOp2D
 encoder/h1/MatMul/ReadVariableOp encoder/h1/MatMul/ReadVariableOp2T
(encoder/z_log_var/BiasAdd/ReadVariableOp(encoder/z_log_var/BiasAdd/ReadVariableOp2R
'encoder/z_log_var/MatMul/ReadVariableOp'encoder/z_log_var/MatMul/ReadVariableOp2N
%encoder/z_mean/BiasAdd/ReadVariableOp%encoder/z_mean/BiasAdd/ReadVariableOp2L
$encoder/z_mean/MatMul/ReadVariableOp$encoder/z_mean/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ђ
…
B__inference_vae_1_layer_call_and_return_conditional_losses_1187182

inputs"
encoder_1187151:	А
encoder_1187153:	А"
encoder_1187155:	А
encoder_1187157:"
encoder_1187159:	А
encoder_1187161:"
decoder_1187166:	А
decoder_1187168:	А"
decoder_1187170:	А
decoder_1187172:"
decoder_1187174:	А
decoder_1187176:
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallг
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_1187151encoder_1187153encoder_1187155encoder_1187157encoder_1187159encoder_1187161*
Tin
	2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_1186737с
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2decoder_1187166decoder_1187168decoder_1187170decoder_1187172decoder_1187174decoder_1187176*
Tin
	2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_1186972w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€К
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
И
г
D__inference_decoder_layer_call_and_return_conditional_losses_1187048
input_2

h4_1187031:	А

h4_1187033:	А0
classification_output_1187036:	А+
classification_output_1187038:.
cont_decoder_output_1187041:	А)
cont_decoder_output_1187043:
identity

identity_1ИҐ-classification_output/StatefulPartitionedCallҐ+cont_decoder_output/StatefulPartitionedCallҐh4/StatefulPartitionedCallЁ
h4/StatefulPartitionedCallStatefulPartitionedCallinput_2
h4_1187031
h4_1187033*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_1186843ƒ
-classification_output/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0classification_output_1187036classification_output_1187038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_1186860Љ
+cont_decoder_output/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0cont_decoder_output_1187041cont_decoder_output_1187043*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1186876Г
IdentityIdentity4cont_decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€З

Identity_1Identity6classification_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ѕ
NoOpNoOp.^classification_output/StatefulPartitionedCall,^cont_decoder_output/StatefulPartitionedCall^h4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2^
-classification_output/StatefulPartitionedCall-classification_output/StatefulPartitionedCall2Z
+cont_decoder_output/StatefulPartitionedCall+cont_decoder_output/StatefulPartitionedCall28
h4/StatefulPartitionedCallh4/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
©
Љ
'__inference_vae_1_layer_call_fn_1187115
input_1
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
	unknown_5:	А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
	unknown_9:	А

unknown_10:
identity

identity_1ИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_vae_1_layer_call_and_return_conditional_losses_1187086o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
ф;
Н
D__inference_encoder_layer_call_and_return_conditional_losses_1187653

inputs4
!h1_matmul_readvariableop_resource:	А1
"h1_biasadd_readvariableop_resource:	А8
%z_mean_matmul_readvariableop_resource:	А4
&z_mean_biasadd_readvariableop_resource:;
(z_log_var_matmul_readvariableop_resource:	А7
)z_log_var_biasadd_readvariableop_resource:
identity

identity_1

identity_2ИҐh1/BiasAdd/ReadVariableOpҐh1/MatMul/ReadVariableOpҐ z_log_var/BiasAdd/ReadVariableOpҐz_log_var/MatMul/ReadVariableOpҐz_mean/BiasAdd/ReadVariableOpҐz_mean/MatMul/ReadVariableOp{
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0p
	h1/MatMulMatMulinputs h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АW
h1/ReluReluh1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
 select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    А   s
"select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        s
"select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
select_z_var/strided_sliceStridedSliceh1/Relu:activations:0)select_z_var/strided_slice/stack:output:0+select_z_var/strided_slice/stack_1:output:0+select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

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
valueB"    А   t
#select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ђ
select_z_mean/strided_sliceStridedSliceh1/Relu:activations:0*select_z_mean/strided_slice/stack:output:0,select_z_mean/strided_slice/stack_1:output:0,select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_maskГ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Х
z_mean/MatMulMatMul$select_z_mean/strided_slice:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Й
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ъ
z_log_var/MatMulMatMul#select_z_var/strided_slice:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€U
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
valueB:ю
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
valueB:И
Sampling/strided_slice_1StridedSliceSampling/Shape_1:output:0'Sampling/strided_slice_1/stack:output:0)Sampling/strided_slice_1/stack_1:output:0)Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЦ
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
 *  А?»
+Sampling/random_normal/RandomStandardNormalRandomStandardNormal%Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0*
seed±€е)*
seed2ы√№±
Sampling/random_normal/mulMul4Sampling/random_normal/RandomStandardNormal:output:0&Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ч
Sampling/random_normalAddV2Sampling/random_normal/mul:z:0$Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?z
Sampling/mulMulSampling/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€W
Sampling/ExpExpSampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€u
Sampling/mul_1MulSampling/Exp:y:0Sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€t
Sampling/addAddV2z_mean/BiasAdd:output:0Sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
IdentityIdentityz_mean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€k

Identity_1Identityz_log_var/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€a

Identity_2IdentitySampling/add:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Б
NoOpNoOp^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Р
 
D__inference_encoder_layer_call_and_return_conditional_losses_1186596

inputs

h1_1186508:	А

h1_1186510:	А!
z_mean_1186544:	А
z_mean_1186546:$
z_log_var_1186560:	А
z_log_var_1186562:
identity

identity_1

identity_2ИҐ Sampling/StatefulPartitionedCallҐh1/StatefulPartitionedCallҐ!z_log_var/StatefulPartitionedCallҐz_mean/StatefulPartitionedCall№
h1/StatefulPartitionedCallStatefulPartitionedCallinputs
h1_1186508
h1_1186510*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_1186507я
select_z_var/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_1186521б
select_z_mean/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1186531Л
z_mean/StatefulPartitionedCallStatefulPartitionedCall&select_z_mean/PartitionedCall:output:0z_mean_1186544z_mean_1186546*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_1186543Ц
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall%select_z_var/PartitionedCall:output:0z_log_var_1186560z_log_var_1186562*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_1186559Ч
 Sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_1186591v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€{

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€z

Identity_2Identity)Sampling/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ћ
NoOpNoOp!^Sampling/StatefulPartitionedCall^h1/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2D
 Sampling/StatefulPartitionedCall Sampling/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
И
г
D__inference_decoder_layer_call_and_return_conditional_losses_1187028
input_2

h4_1187011:	А

h4_1187013:	А0
classification_output_1187016:	А+
classification_output_1187018:.
cont_decoder_output_1187021:	А)
cont_decoder_output_1187023:
identity

identity_1ИҐ-classification_output/StatefulPartitionedCallҐ+cont_decoder_output/StatefulPartitionedCallҐh4/StatefulPartitionedCallЁ
h4/StatefulPartitionedCallStatefulPartitionedCallinput_2
h4_1187011
h4_1187013*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_1186843ƒ
-classification_output/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0classification_output_1187016classification_output_1187018*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_1186860Љ
+cont_decoder_output/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0cont_decoder_output_1187021cont_decoder_output_1187023*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1186876Г
IdentityIdentity4cont_decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€З

Identity_1Identity6classification_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ѕ
NoOpNoOp.^classification_output/StatefulPartitionedCall,^cont_decoder_output/StatefulPartitionedCall^h4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2^
-classification_output/StatefulPartitionedCall-classification_output/StatefulPartitionedCall2Z
+cont_decoder_output/StatefulPartitionedCall+cont_decoder_output/StatefulPartitionedCall28
h4/StatefulPartitionedCallh4/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
®

Ц
)__inference_decoder_layer_call_fn_1187726

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:
	unknown_3:	А
	unknown_4:
identity

identity_1ИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_1186884o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Е
в
D__inference_decoder_layer_call_and_return_conditional_losses_1186884

inputs

h4_1186844:	А

h4_1186846:	А0
classification_output_1186861:	А+
classification_output_1186863:.
cont_decoder_output_1186877:	А)
cont_decoder_output_1186879:
identity

identity_1ИҐ-classification_output/StatefulPartitionedCallҐ+cont_decoder_output/StatefulPartitionedCallҐh4/StatefulPartitionedCall№
h4/StatefulPartitionedCallStatefulPartitionedCallinputs
h4_1186844
h4_1186846*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_1186843ƒ
-classification_output/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0classification_output_1186861classification_output_1186863*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_output_layer_call_and_return_conditional_losses_1186860Љ
+cont_decoder_output/StatefulPartitionedCallStatefulPartitionedCall#h4/StatefulPartitionedCall:output:0cont_decoder_output_1186877cont_decoder_output_1186879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1186876Г
IdentityIdentity4cont_decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€З

Identity_1Identity6classification_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ѕ
NoOpNoOp.^classification_output/StatefulPartitionedCall,^cont_decoder_output/StatefulPartitionedCall^h4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2^
-classification_output/StatefulPartitionedCall-classification_output/StatefulPartitionedCall2Z
+cont_decoder_output/StatefulPartitionedCall+cont_decoder_output/StatefulPartitionedCall28
h4/StatefulPartitionedCallh4/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ђ
…
B__inference_vae_1_layer_call_and_return_conditional_losses_1187086

inputs"
encoder_1187055:	А
encoder_1187057:	А"
encoder_1187059:	А
encoder_1187061:"
encoder_1187063:	А
encoder_1187065:"
decoder_1187070:	А
decoder_1187072:	А"
decoder_1187074:	А
decoder_1187076:"
decoder_1187078:	А
decoder_1187080:
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallг
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_1187055encoder_1187057encoder_1187059encoder_1187061encoder_1187063encoder_1187065*
Tin
	2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_1186596с
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2decoder_1187070decoder_1187072decoder_1187074decoder_1187076decoder_1187078decoder_1187080*
Tin
	2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_1186884w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€К
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Я
ѕ
D__inference_encoder_layer_call_and_return_conditional_losses_1186801
input_layer

h1_1186780:	А

h1_1186782:	А!
z_mean_1186787:	А
z_mean_1186789:$
z_log_var_1186792:	А
z_log_var_1186794:
identity

identity_1

identity_2ИҐ Sampling/StatefulPartitionedCallҐh1/StatefulPartitionedCallҐ!z_log_var/StatefulPartitionedCallҐz_mean/StatefulPartitionedCallб
h1/StatefulPartitionedCallStatefulPartitionedCallinput_layer
h1_1186780
h1_1186782*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_1186507я
select_z_var/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_1186521б
select_z_mean/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1186531Л
z_mean/StatefulPartitionedCallStatefulPartitionedCall&select_z_mean/PartitionedCall:output:0z_mean_1186787z_mean_1186789*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_1186543Ц
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall%select_z_var/PartitionedCall:output:0z_log_var_1186792z_log_var_1186794*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_1186559Ч
 Sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_1186591v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€{

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€z

Identity_2Identity)Sampling/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ћ
NoOpNoOp!^Sampling/StatefulPartitionedCall^h1/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2D
 Sampling/StatefulPartitionedCall Sampling/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:T P
'
_output_shapes
:€€€€€€€€€
%
_user_specified_nameinput_layer
„	
В
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1187976

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ю

т
?__inference_h4_layer_call_and_return_conditional_losses_1186843

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Љ
У
$__inference_h4_layer_call_fn_1187946

inputs
unknown:	А
	unknown_0:	А
identityИҐStatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h4_layer_call_and_return_conditional_losses_1186843p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Я
ѕ
D__inference_encoder_layer_call_and_return_conditional_losses_1186825
input_layer

h1_1186804:	А

h1_1186806:	А!
z_mean_1186811:	А
z_mean_1186813:$
z_log_var_1186816:	А
z_log_var_1186818:
identity

identity_1

identity_2ИҐ Sampling/StatefulPartitionedCallҐh1/StatefulPartitionedCallҐ!z_log_var/StatefulPartitionedCallҐz_mean/StatefulPartitionedCallб
h1/StatefulPartitionedCallStatefulPartitionedCallinput_layer
h1_1186804
h1_1186806*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_h1_layer_call_and_return_conditional_losses_1186507я
select_z_var/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_select_z_var_layer_call_and_return_conditional_losses_1186677б
select_z_mean/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1186658Л
z_mean/StatefulPartitionedCallStatefulPartitionedCall&select_z_mean/PartitionedCall:output:0z_mean_1186811z_mean_1186813*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_1186543Ц
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall%select_z_var/PartitionedCall:output:0z_log_var_1186816z_log_var_1186818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_1186559Ч
 Sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_Sampling_layer_call_and_return_conditional_losses_1186591v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€{

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€z

Identity_2Identity)Sampling/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ћ
NoOpNoOp!^Sampling/StatefulPartitionedCall^h1/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2D
 Sampling/StatefulPartitionedCall Sampling/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:T P
'
_output_shapes
:€€€€€€€€€
%
_user_specified_nameinput_layer
≠
K
/__inference_select_z_mean_layer_call_fn_1187820

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1186531a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ф;
Н
D__inference_encoder_layer_call_and_return_conditional_losses_1187707

inputs4
!h1_matmul_readvariableop_resource:	А1
"h1_biasadd_readvariableop_resource:	А8
%z_mean_matmul_readvariableop_resource:	А4
&z_mean_biasadd_readvariableop_resource:;
(z_log_var_matmul_readvariableop_resource:	А7
)z_log_var_biasadd_readvariableop_resource:
identity

identity_1

identity_2ИҐh1/BiasAdd/ReadVariableOpҐh1/MatMul/ReadVariableOpҐ z_log_var/BiasAdd/ReadVariableOpҐz_log_var/MatMul/ReadVariableOpҐz_mean/BiasAdd/ReadVariableOpҐz_mean/MatMul/ReadVariableOp{
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0p
	h1/MatMulMatMulinputs h1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АW
h1/ReluReluh1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
 select_z_var/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    А   s
"select_z_var/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        s
"select_z_var/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
select_z_var/strided_sliceStridedSliceh1/Relu:activations:0)select_z_var/strided_slice/stack:output:0+select_z_var/strided_slice/stack_1:output:0+select_z_var/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

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
valueB"    А   t
#select_z_mean/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ђ
select_z_mean/strided_sliceStridedSliceh1/Relu:activations:0*select_z_mean/strided_slice/stack:output:0,select_z_mean/strided_slice/stack_1:output:0,select_z_mean/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*

begin_mask*
end_maskГ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Х
z_mean/MatMulMatMul$select_z_mean/strided_slice:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Й
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ъ
z_log_var/MatMulMatMul#select_z_var/strided_slice:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€U
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
valueB:ю
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
valueB:И
Sampling/strided_slice_1StridedSliceSampling/Shape_1:output:0'Sampling/strided_slice_1/stack:output:0)Sampling/strided_slice_1/stack_1:output:0)Sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЦ
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
 *  А?»
+Sampling/random_normal/RandomStandardNormalRandomStandardNormal%Sampling/random_normal/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0*
seed±€е)*
seed2Ь÷т±
Sampling/random_normal/mulMul4Sampling/random_normal/RandomStandardNormal:output:0&Sampling/random_normal/stddev:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ч
Sampling/random_normalAddV2Sampling/random_normal/mul:z:0$Sampling/random_normal/mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
Sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?z
Sampling/mulMulSampling/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€W
Sampling/ExpExpSampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€u
Sampling/mul_1MulSampling/Exp:y:0Sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€t
Sampling/addAddV2z_mean/BiasAdd:output:0Sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
IdentityIdentityz_mean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€k

Identity_1Identityz_log_var/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€a

Identity_2IdentitySampling/add:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Б
NoOpNoOp^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ю

т
?__inference_h1_layer_call_and_return_conditional_losses_1186507

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*й
serving_default’
;
input_10
serving_default_input_1:0€€€€€€€€€<
output_10
StatefulPartitionedCall:0€€€€€€€€€<
output_20
StatefulPartitionedCall:1€€€€€€€€€tensorflow/serving/predict:дл
з
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
ж
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
E41"
trackable_list_wrapper
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
 "
trackable_list_wrapper
 
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
—
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_32ж
'__inference_vae_1_layer_call_fn_1187115
'__inference_vae_1_layer_call_fn_1187380
'__inference_vae_1_layer_call_fn_1187411
'__inference_vae_1_layer_call_fn_1187242њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 zKtrace_0zLtrace_1zMtrace_2zNtrace_3
љ
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_32“
B__inference_vae_1_layer_call_and_return_conditional_losses_1187484
B__inference_vae_1_layer_call_and_return_conditional_losses_1187557
B__inference_vae_1_layer_call_and_return_conditional_losses_1187276
B__inference_vae_1_layer_call_and_return_conditional_losses_1187310њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 zOtrace_0zPtrace_1zQtrace_2zRtrace_3
ЌB 
"__inference__wrapped_model_1186489input_1"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
–
Slayer-0
Tlayer_with_weights-0
Tlayer-1
Ulayer-2
Vlayer-3
Wlayer_with_weights-1
Wlayer-4
Xlayer_with_weights-2
Xlayer-5
Ylayer-6
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_network
©
`layer-0
alayer_with_weights-0
alayer-1
blayer_with_weights-1
blayer-2
clayer_with_weights-2
clayer-3
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_network
N
j	variables
k	keras_api
	(total
	)count"
_tf_keras_metric
N
l	variables
m	keras_api
	*total
	+count"
_tf_keras_metric
N
n	variables
o	keras_api
	,total
	-count"
_tf_keras_metric
N
p	variables
q	keras_api
	.total
	/count"
_tf_keras_metric
N
r	variables
s	keras_api
	0total
	1count"
_tf_keras_metric
N
t	variables
u	keras_api
	2total
	3count"
_tf_keras_metric
N
v	variables
w	keras_api
	4total
	5count"
_tf_keras_metric
N
x	variables
y	keras_api
	6total
	7count"
_tf_keras_metric
N
z	variables
{	keras_api
	8total
	9count"
_tf_keras_metric
N
|	variables
}	keras_api
	:total
	;count"
_tf_keras_metric
N
~	variables
	keras_api
	<total
	=count"
_tf_keras_metric
P
А	variables
Б	keras_api
	>total
	?count"
_tf_keras_metric
P
В	variables
Г	keras_api
	@total
	Acount"
_tf_keras_metric
P
Д	variables
Е	keras_api
	Btotal
	Ccount"
_tf_keras_metric
P
Ж	variables
З	keras_api
	Dtotal
	Ecount"
_tf_keras_metric
»
	Иiter
Йbeta_1
Кbeta_2

Лdecay
Мlearning_ratem°mҐm£m§ m•!m¶"mІ#m®$m©%m™&mЂ'mђv≠vЃvѓv∞ v±!v≤"v≥#vі$vµ%vґ&vЈ'vЄ"
	optimizer
 "
trackable_dict_wrapper
-
Нserving_default"
signature_map
:	А2	h1/kernel
:А2h1/bias
 :	А2z_mean/kernel
:2z_mean/bias
#:!	А2z_log_var/kernel
:2z_log_var/bias
:	А2	h4/kernel
:А2h4/bias
-:+	А2cont_decoder_output/kernel
&:$2cont_decoder_output/bias
/:-	А2classification_output/kernel
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
Ж
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
311
412
513
614
715
816
917
:18
;19
<20
=21
>22
?23
@24
A25
B26
C27
D28
E29"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
О
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
§
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
щBц
'__inference_vae_1_layer_call_fn_1187115input_1"њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
шBх
'__inference_vae_1_layer_call_fn_1187380inputs"њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
шBх
'__inference_vae_1_layer_call_fn_1187411inputs"њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
щBц
'__inference_vae_1_layer_call_fn_1187242input_1"њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
УBР
B__inference_vae_1_layer_call_and_return_conditional_losses_1187484inputs"њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
УBР
B__inference_vae_1_layer_call_and_return_conditional_losses_1187557inputs"њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
ФBС
B__inference_vae_1_layer_call_and_return_conditional_losses_1187276input_1"њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
ФBС
B__inference_vae_1_layer_call_and_return_conditional_losses_1187310input_1"њ
ґ≤≤
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
"
_tf_keras_input_layer
Ѕ
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Ђ
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
†	variables
°trainable_variables
Ґregularization_losses
£	keras_api
§__call__
+•&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Ѕ
¶	variables
Іtrainable_variables
®regularization_losses
©	keras_api
™__call__
+Ђ&call_and_return_all_conditional_losses

 kernel
!bias"
_tf_keras_layer
Ђ
ђ	variables
≠trainable_variables
Ѓregularization_losses
ѓ	keras_api
∞__call__
+±&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
2
3
 4
!5"
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
б
Јtrace_0
Єtrace_1
єtrace_2
Їtrace_32о
)__inference_encoder_layer_call_fn_1186615
)__inference_encoder_layer_call_fn_1187578
)__inference_encoder_layer_call_fn_1187599
)__inference_encoder_layer_call_fn_1186777њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0zЄtrace_1zєtrace_2zЇtrace_3
Ќ
їtrace_0
Љtrace_1
љtrace_2
Њtrace_32Џ
D__inference_encoder_layer_call_and_return_conditional_losses_1187653
D__inference_encoder_layer_call_and_return_conditional_losses_1187707
D__inference_encoder_layer_call_and_return_conditional_losses_1186801
D__inference_encoder_layer_call_and_return_conditional_losses_1186825њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zїtrace_0zЉtrace_1zљtrace_2zЊtrace_3
"
_tf_keras_input_layer
Ѕ
њ	variables
јtrainable_variables
Ѕregularization_losses
¬	keras_api
√__call__
+ƒ&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
Ѕ
≈	variables
∆trainable_variables
«regularization_losses
»	keras_api
…__call__
+ &call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
Ѕ
Ћ	variables
ћtrainable_variables
Ќregularization_losses
ќ	keras_api
ѕ__call__
+–&call_and_return_all_conditional_losses

&kernel
'bias"
_tf_keras_layer
J
"0
#1
$2
%3
&4
'5"
trackable_list_wrapper
J
"0
#1
$2
%3
&4
'5"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
б
÷trace_0
„trace_1
Ўtrace_2
ўtrace_32о
)__inference_decoder_layer_call_fn_1186901
)__inference_decoder_layer_call_fn_1187726
)__inference_decoder_layer_call_fn_1187745
)__inference_decoder_layer_call_fn_1187008њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z÷trace_0z„trace_1zЎtrace_2zўtrace_3
Ќ
Џtrace_0
џtrace_1
№trace_2
Ёtrace_32Џ
D__inference_decoder_layer_call_and_return_conditional_losses_1187770
D__inference_decoder_layer_call_and_return_conditional_losses_1187795
D__inference_decoder_layer_call_and_return_conditional_losses_1187028
D__inference_decoder_layer_call_and_return_conditional_losses_1187048њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЏtrace_0zџtrace_1z№trace_2zЁtrace_3
.
(0
)1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
.
*0
+1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
.
,0
-1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
.
.0
/1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
.
00
11"
trackable_list_wrapper
-
r	variables"
_generic_user_object
.
20
31"
trackable_list_wrapper
-
t	variables"
_generic_user_object
.
40
51"
trackable_list_wrapper
-
v	variables"
_generic_user_object
.
60
71"
trackable_list_wrapper
-
x	variables"
_generic_user_object
.
80
91"
trackable_list_wrapper
-
z	variables"
_generic_user_object
.
:0
;1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
.
<0
=1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
.
>0
?1"
trackable_list_wrapper
.
А	variables"
_generic_user_object
.
@0
A1"
trackable_list_wrapper
.
В	variables"
_generic_user_object
.
B0
C1"
trackable_list_wrapper
.
Д	variables"
_generic_user_object
.
D0
E1"
trackable_list_wrapper
.
Ж	variables"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ћB…
%__inference_signature_wrapper_1187349input_1"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
к
гtrace_02Ћ
$__inference_h1_layer_call_fn_1187804Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zгtrace_0
Е
дtrace_02ж
?__inference_h1_layer_call_and_return_conditional_losses_1187815Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zдtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
я
кtrace_0
лtrace_12§
/__inference_select_z_mean_layer_call_fn_1187820
/__inference_select_z_mean_layer_call_fn_1187825њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zкtrace_0zлtrace_1
Х
мtrace_0
нtrace_12Џ
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1187833
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1187841њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zмtrace_0zнtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
Ё
уtrace_0
фtrace_12Ґ
.__inference_select_z_var_layer_call_fn_1187846
.__inference_select_z_var_layer_call_fn_1187851њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zуtrace_0zфtrace_1
У
хtrace_0
цtrace_12Ў
I__inference_select_z_var_layer_call_and_return_conditional_losses_1187859
I__inference_select_z_var_layer_call_and_return_conditional_losses_1187867њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zхtrace_0zцtrace_1
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
†	variables
°trainable_variables
Ґregularization_losses
§__call__
+•&call_and_return_all_conditional_losses
'•"call_and_return_conditional_losses"
_generic_user_object
о
ьtrace_02ѕ
(__inference_z_mean_layer_call_fn_1187876Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zьtrace_0
Й
эtrace_02к
C__inference_z_mean_layer_call_and_return_conditional_losses_1187886Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zэtrace_0
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
юnon_trainable_variables
€layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
¶	variables
Іtrainable_variables
®regularization_losses
™__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
с
Гtrace_02“
+__inference_z_log_var_layer_call_fn_1187895Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zГtrace_0
М
Дtrace_02н
F__inference_z_log_var_layer_call_and_return_conditional_losses_1187905Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
ђ	variables
≠trainable_variables
Ѓregularization_losses
∞__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
р
Кtrace_02—
*__inference_Sampling_layer_call_fn_1187911Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zКtrace_0
Л
Лtrace_02м
E__inference_Sampling_layer_call_and_return_conditional_losses_1187937Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЛtrace_0
 "
trackable_list_wrapper
Q
S0
T1
U2
V3
W4
X5
Y6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
€Bь
)__inference_encoder_layer_call_fn_1186615input_layer"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
)__inference_encoder_layer_call_fn_1187578inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
)__inference_encoder_layer_call_fn_1187599inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
)__inference_encoder_layer_call_fn_1186777input_layer"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_encoder_layer_call_and_return_conditional_losses_1187653inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_encoder_layer_call_and_return_conditional_losses_1187707inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
D__inference_encoder_layer_call_and_return_conditional_losses_1186801input_layer"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
D__inference_encoder_layer_call_and_return_conditional_losses_1186825input_layer"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
Є
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
њ	variables
јtrainable_variables
Ѕregularization_losses
√__call__
+ƒ&call_and_return_all_conditional_losses
'ƒ"call_and_return_conditional_losses"
_generic_user_object
к
Сtrace_02Ћ
$__inference_h4_layer_call_fn_1187946Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0
Е
Тtrace_02ж
?__inference_h4_layer_call_and_return_conditional_losses_1187957Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zТtrace_0
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
Є
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
≈	variables
∆trainable_variables
«regularization_losses
…__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
ы
Шtrace_02№
5__inference_cont_decoder_output_layer_call_fn_1187966Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zШtrace_0
Ц
Щtrace_02ч
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1187976Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0
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
Є
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Ћ	variables
ћtrainable_variables
Ќregularization_losses
ѕ__call__
+–&call_and_return_all_conditional_losses
'–"call_and_return_conditional_losses"
_generic_user_object
э
Яtrace_02ё
7__inference_classification_output_layer_call_fn_1187985Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЯtrace_0
Ш
†trace_02щ
R__inference_classification_output_layer_call_and_return_conditional_losses_1187996Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0
 "
trackable_list_wrapper
<
`0
a1
b2
c3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ыBш
)__inference_decoder_layer_call_fn_1186901input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
)__inference_decoder_layer_call_fn_1187726inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
)__inference_decoder_layer_call_fn_1187745inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
)__inference_decoder_layer_call_fn_1187008input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_decoder_layer_call_and_return_conditional_losses_1187770inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_decoder_layer_call_and_return_conditional_losses_1187795inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
D__inference_decoder_layer_call_and_return_conditional_losses_1187028input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
D__inference_decoder_layer_call_and_return_conditional_losses_1187048input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЎB’
$__inference_h1_layer_call_fn_1187804inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
?__inference_h1_layer_call_and_return_conditional_losses_1187815inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
АBэ
/__inference_select_z_mean_layer_call_fn_1187820inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
/__inference_select_z_mean_layer_call_fn_1187825inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1187833inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1187841inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
€Bь
.__inference_select_z_var_layer_call_fn_1187846inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_select_z_var_layer_call_fn_1187851inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_select_z_var_layer_call_and_return_conditional_losses_1187859inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_select_z_var_layer_call_and_return_conditional_losses_1187867inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
№Bў
(__inference_z_mean_layer_call_fn_1187876inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_z_mean_layer_call_and_return_conditional_losses_1187886inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
яB№
+__inference_z_log_var_layer_call_fn_1187895inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_z_log_var_layer_call_and_return_conditional_losses_1187905inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
кBз
*__inference_Sampling_layer_call_fn_1187911inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
E__inference_Sampling_layer_call_and_return_conditional_losses_1187937inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЎB’
$__inference_h4_layer_call_fn_1187946inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
?__inference_h4_layer_call_and_return_conditional_losses_1187957inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
йBж
5__inference_cont_decoder_output_layer_call_fn_1187966inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1187976inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
лBи
7__inference_classification_output_layer_call_fn_1187985inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
R__inference_classification_output_layer_call_and_return_conditional_losses_1187996inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
!:	А2Adam/h1/kernel/m
:А2Adam/h1/bias/m
%:#	А2Adam/z_mean/kernel/m
:2Adam/z_mean/bias/m
(:&	А2Adam/z_log_var/kernel/m
!:2Adam/z_log_var/bias/m
!:	А2Adam/h4/kernel/m
:А2Adam/h4/bias/m
2:0	А2!Adam/cont_decoder_output/kernel/m
+:)2Adam/cont_decoder_output/bias/m
4:2	А2#Adam/classification_output/kernel/m
-:+2!Adam/classification_output/bias/m
!:	А2Adam/h1/kernel/v
:А2Adam/h1/bias/v
%:#	А2Adam/z_mean/kernel/v
:2Adam/z_mean/bias/v
(:&	А2Adam/z_log_var/kernel/v
!:2Adam/z_log_var/bias/v
!:	А2Adam/h4/kernel/v
:А2Adam/h4/bias/v
2:0	А2!Adam/cont_decoder_output/kernel/v
+:)2Adam/cont_decoder_output/bias/v
4:2	А2#Adam/classification_output/kernel/v
-:+2!Adam/classification_output/bias/vЌ
E__inference_Sampling_layer_call_and_return_conditional_losses_1187937ГZҐW
PҐM
KЪH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ §
*__inference_Sampling_layer_call_fn_1187911vZҐW
PҐM
KЪH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
™ "К€€€€€€€€€ћ
"__inference__wrapped_model_1186489• !"#&'$%0Ґ-
&Ґ#
!К
input_1€€€€€€€€€
™ "c™`
.
output_1"К
output_1€€€€€€€€€
.
output_2"К
output_2€€€€€€€€€≥
R__inference_classification_output_layer_call_and_return_conditional_losses_1187996]&'0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ Л
7__inference_classification_output_layer_call_fn_1187985P&'0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€±
P__inference_cont_decoder_output_layer_call_and_return_conditional_losses_1187976]$%0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ Й
5__inference_cont_decoder_output_layer_call_fn_1187966P$%0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€Ў
D__inference_decoder_layer_call_and_return_conditional_losses_1187028П"#&'$%8Ґ5
.Ґ+
!К
input_2€€€€€€€€€
p 

 
™ "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ Ў
D__inference_decoder_layer_call_and_return_conditional_losses_1187048П"#&'$%8Ґ5
.Ґ+
!К
input_2€€€€€€€€€
p

 
™ "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ „
D__inference_decoder_layer_call_and_return_conditional_losses_1187770О"#&'$%7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ „
D__inference_decoder_layer_call_and_return_conditional_losses_1187795О"#&'$%7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ ѓ
)__inference_decoder_layer_call_fn_1186901Б"#&'$%8Ґ5
.Ґ+
!К
input_2€€€€€€€€€
p 

 
™ "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€ѓ
)__inference_decoder_layer_call_fn_1187008Б"#&'$%8Ґ5
.Ґ+
!К
input_2€€€€€€€€€
p

 
™ "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€Ѓ
)__inference_decoder_layer_call_fn_1187726А"#&'$%7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€Ѓ
)__inference_decoder_layer_call_fn_1187745А"#&'$%7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€ы
D__inference_encoder_layer_call_and_return_conditional_losses_1186801≤ !<Ґ9
2Ґ/
%К"
input_layer€€€€€€€€€
p 

 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ ы
D__inference_encoder_layer_call_and_return_conditional_losses_1186825≤ !<Ґ9
2Ґ/
%К"
input_layer€€€€€€€€€
p

 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ ц
D__inference_encoder_layer_call_and_return_conditional_losses_1187653≠ !7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ ц
D__inference_encoder_layer_call_and_return_conditional_losses_1187707≠ !7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ –
)__inference_encoder_layer_call_fn_1186615Ґ !<Ґ9
2Ґ/
%К"
input_layer€€€€€€€€€
p 

 
™ "ZЪW
К
0€€€€€€€€€
К
1€€€€€€€€€
К
2€€€€€€€€€–
)__inference_encoder_layer_call_fn_1186777Ґ !<Ґ9
2Ґ/
%К"
input_layer€€€€€€€€€
p

 
™ "ZЪW
К
0€€€€€€€€€
К
1€€€€€€€€€
К
2€€€€€€€€€Ћ
)__inference_encoder_layer_call_fn_1187578Э !7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "ZЪW
К
0€€€€€€€€€
К
1€€€€€€€€€
К
2€€€€€€€€€Ћ
)__inference_encoder_layer_call_fn_1187599Э !7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "ZЪW
К
0€€€€€€€€€
К
1€€€€€€€€€
К
2€€€€€€€€€†
?__inference_h1_layer_call_and_return_conditional_losses_1187815]/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€А
Ъ x
$__inference_h1_layer_call_fn_1187804P/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€А†
?__inference_h4_layer_call_and_return_conditional_losses_1187957]"#/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€А
Ъ x
$__inference_h4_layer_call_fn_1187946P"#/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€А∞
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1187833b8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А

 
p 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ∞
J__inference_select_z_mean_layer_call_and_return_conditional_losses_1187841b8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А

 
p
™ "&Ґ#
К
0€€€€€€€€€А
Ъ И
/__inference_select_z_mean_layer_call_fn_1187820U8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А

 
p 
™ "К€€€€€€€€€АИ
/__inference_select_z_mean_layer_call_fn_1187825U8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А

 
p
™ "К€€€€€€€€€Аѓ
I__inference_select_z_var_layer_call_and_return_conditional_losses_1187859b8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А

 
p 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ѓ
I__inference_select_z_var_layer_call_and_return_conditional_losses_1187867b8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А

 
p
™ "&Ґ#
К
0€€€€€€€€€А
Ъ З
.__inference_select_z_var_layer_call_fn_1187846U8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А

 
p 
™ "К€€€€€€€€€АЗ
.__inference_select_z_var_layer_call_fn_1187851U8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А

 
p
™ "К€€€€€€€€€АЏ
%__inference_signature_wrapper_1187349∞ !"#&'$%;Ґ8
Ґ 
1™.
,
input_1!К
input_1€€€€€€€€€"c™`
.
output_1"К
output_1€€€€€€€€€
.
output_2"К
output_2€€€€€€€€€д
B__inference_vae_1_layer_call_and_return_conditional_losses_1187276Э !"#&'$%@Ґ=
&Ґ#
!К
input_1€€€€€€€€€
™

trainingp "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ д
B__inference_vae_1_layer_call_and_return_conditional_losses_1187310Э !"#&'$%@Ґ=
&Ґ#
!К
input_1€€€€€€€€€
™

trainingp"KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ г
B__inference_vae_1_layer_call_and_return_conditional_losses_1187484Ь !"#&'$%?Ґ<
%Ґ"
 К
inputs€€€€€€€€€
™

trainingp "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ г
B__inference_vae_1_layer_call_and_return_conditional_losses_1187557Ь !"#&'$%?Ґ<
%Ґ"
 К
inputs€€€€€€€€€
™

trainingp"KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ ї
'__inference_vae_1_layer_call_fn_1187115П !"#&'$%@Ґ=
&Ґ#
!К
input_1€€€€€€€€€
™

trainingp "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€ї
'__inference_vae_1_layer_call_fn_1187242П !"#&'$%@Ґ=
&Ґ#
!К
input_1€€€€€€€€€
™

trainingp"=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€Ї
'__inference_vae_1_layer_call_fn_1187380О !"#&'$%?Ґ<
%Ґ"
 К
inputs€€€€€€€€€
™

trainingp "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€Ї
'__inference_vae_1_layer_call_fn_1187411О !"#&'$%?Ґ<
%Ґ"
 К
inputs€€€€€€€€€
™

trainingp"=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€І
F__inference_z_log_var_layer_call_and_return_conditional_losses_1187905] !0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ 
+__inference_z_log_var_layer_call_fn_1187895P !0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€§
C__inference_z_mean_layer_call_and_return_conditional_losses_1187886]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
(__inference_z_mean_layer_call_fn_1187876P0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€
??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
z
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d/kernel
s
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*"
_output_shapes
:@*
dtype0
n
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d/bias
g
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes
:@*
dtype0
~
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv1d_1/kernel
w
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*"
_output_shapes
:@@*
dtype0
r
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_1/bias
k
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes
:@*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
?
Adam/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d/kernel/m
?
(Adam/conv1d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/m*"
_output_shapes
:@*
dtype0
|
Adam/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv1d/bias/m
u
&Adam/conv1d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv1d_1/kernel/m
?
*Adam/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/m*"
_output_shapes
:@@*
dtype0
?
Adam/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_1/bias/m
y
(Adam/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d/kernel/v
?
(Adam/conv1d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/v*"
_output_shapes
:@*
dtype0
|
Adam/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv1d/bias/v
u
&Adam/conv1d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv1d_1/kernel/v
?
*Adam/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/v*"
_output_shapes
:@@*
dtype0
?
Adam/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_1/bias/v
y
(Adam/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?9
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?8
value?8B?8 B?8
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
R
$	variables
%trainable_variables
&regularization_losses
'	keras_api
h

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
R
.	variables
/trainable_variables
0regularization_losses
1	keras_api
h

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
R
8	variables
9trainable_variables
:regularization_losses
;	keras_api
?
<iter

=beta_1

>beta_2
	?decay
@learning_ratem~mm?m?(m?)m?2m?3m?v?v?v?v?(v?)v?2v?3v?
8
0
1
2
3
(4
)5
26
37
8
0
1
2
3
(4
)5
26
37
 
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
 
YW
VARIABLE_VALUEconv1d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv1d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
 	variables
!trainable_variables
"regularization_losses
 
 
 
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
$	variables
%trainable_variables
&regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
*	variables
+trainable_variables
,regularization_losses
 
 
 
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
.	variables
/trainable_variables
0regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31

20
31
 
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
4	variables
5trainable_variables
6regularization_losses
 
 
 
?
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
8	variables
9trainable_variables
:regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
1
2
3
4
5
6
7
	8

s0
t1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	utotal
	vcount
w	variables
x	keras_api
D
	ytotal
	zcount
{
_fn_kwargs
|	variables
}	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

u0
v1

w	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

y0
z1

|	variables
|z
VARIABLE_VALUEAdam/conv1d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv1d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv1d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv1d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv1d_inputPlaceholder*+
_output_shapes
:?????????2*
dtype0* 
shape:?????????2
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_inputconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_27484
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv1d/kernel/m/Read/ReadVariableOp&Adam/conv1d/bias/m/Read/ReadVariableOp*Adam/conv1d_1/kernel/m/Read/ReadVariableOp(Adam/conv1d_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv1d/kernel/v/Read/ReadVariableOp&Adam/conv1d/bias/v/Read/ReadVariableOp*Adam/conv1d_1/kernel/v/Read/ReadVariableOp(Adam/conv1d_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_27952
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d/kernel/mAdam/conv1d/bias/mAdam/conv1d_1/kernel/mAdam/conv1d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv1d/kernel/vAdam/conv1d/bias/vAdam/conv1d_1/kernel/vAdam/conv1d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*-
Tin&
$2"*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_28061??
?

a
B__inference_dropout_layer_call_and_return_conditional_losses_27292

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????.@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????.@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????.@s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????.@m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????.@]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????.@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????.@:S O
+
_output_shapes
:?????????.@
 
_user_specified_nameinputs
?
?
&__inference_conv1d_layer_call_fn_27649

inputs
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_27083s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????.@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
#__inference_signature_wrapper_27484
conv1d_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:	?
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_27045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????2
&
_user_specified_nameconv1d_input
?	
?
*__inference_sequential_layer_call_fn_27397
conv1d_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:	?
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_27357o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????2
&
_user_specified_nameconv1d_input
?
E
)__inference_dropout_1_layer_call_fn_27779

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_27157`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27735

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_27801

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?9
?
E__inference_sequential_layer_call_and_return_conditional_losses_27576

inputsH
2conv1d_conv1d_expanddims_1_readvariableop_resource:@4
&conv1d_biasadd_readvariableop_resource:@J
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:@@6
(conv1d_1_biasadd_readvariableop_resource:@7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOpg
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsinputs%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2?
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@?
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.@*
paddingVALID*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*+
_output_shapes
:?????????.@*
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.@b
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:?????????.@m
dropout/IdentityIdentityconv1d/Relu:activations:0*
T0*+
_output_shapes
:?????????.@i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsdropout/Identity:output:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????.@?
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@?
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????,@*
paddingVALID*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:?????????,@*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????,@f
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????,@^
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d/ExpandDims
ExpandDimsconv1d_1/Relu:activations:0%max_pooling1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????,@?
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten/ReshapeReshapemax_pooling1d/Squeeze:output:0flatten/Const:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????j
dropout_1/IdentityIdentitydense/Relu:activations:0*
T0*'
_output_shapes
:??????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
activation/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????k
IdentityIdentityactivation/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_27789

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?E
?
__inference__traced_save_27952
file_prefix,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv1d_kernel_m_read_readvariableop1
-savev2_adam_conv1d_bias_m_read_readvariableop5
1savev2_adam_conv1d_1_kernel_m_read_readvariableop3
/savev2_adam_conv1d_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv1d_kernel_v_read_readvariableop1
-savev2_adam_conv1d_bias_v_read_readvariableop5
1savev2_adam_conv1d_1_kernel_v_read_readvariableop3
/savev2_adam_conv1d_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv1d_kernel_m_read_readvariableop-savev2_adam_conv1d_bias_m_read_readvariableop1savev2_adam_conv1d_1_kernel_m_read_readvariableop/savev2_adam_conv1d_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv1d_kernel_v_read_readvariableop-savev2_adam_conv1d_bias_v_read_readvariableop1savev2_adam_conv1d_1_kernel_v_read_readvariableop/savev2_adam_conv1d_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@@:@:	?:::: : : : : : : : : :@:@:@@:@:	?::::@:@:@@:@:	?:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:@: 

_output_shapes
:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :($
"
_output_shapes
:@: 

_output_shapes
:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::($
"
_output_shapes
:@: 

_output_shapes
:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	?: 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::"

_output_shapes
: 
ۃ
?
!__inference__traced_restore_28061
file_prefix4
assignvariableop_conv1d_kernel:@,
assignvariableop_1_conv1d_bias:@8
"assignvariableop_2_conv1d_1_kernel:@@.
 assignvariableop_3_conv1d_1_bias:@2
assignvariableop_4_dense_kernel:	?+
assignvariableop_5_dense_bias:3
!assignvariableop_6_dense_1_kernel:-
assignvariableop_7_dense_1_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: >
(assignvariableop_17_adam_conv1d_kernel_m:@4
&assignvariableop_18_adam_conv1d_bias_m:@@
*assignvariableop_19_adam_conv1d_1_kernel_m:@@6
(assignvariableop_20_adam_conv1d_1_bias_m:@:
'assignvariableop_21_adam_dense_kernel_m:	?3
%assignvariableop_22_adam_dense_bias_m:;
)assignvariableop_23_adam_dense_1_kernel_m:5
'assignvariableop_24_adam_dense_1_bias_m:>
(assignvariableop_25_adam_conv1d_kernel_v:@4
&assignvariableop_26_adam_conv1d_bias_v:@@
*assignvariableop_27_adam_conv1d_1_kernel_v:@@6
(assignvariableop_28_adam_conv1d_1_bias_v:@:
'assignvariableop_29_adam_dense_kernel_v:	?3
%assignvariableop_30_adam_dense_bias_v:;
)assignvariableop_31_adam_dense_1_kernel_v:5
'assignvariableop_32_adam_dense_1_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_conv1d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_conv1d_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_conv1d_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv1d_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv1d_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv1d_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_conv1d_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv1d_1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv1d_1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp%assignvariableop_30_adam_dense_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_1_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
I
-__inference_max_pooling1d_layer_call_fn_27727

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27125d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,@:S O
+
_output_shapes
:?????????,@
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_27774

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_27680

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????.@_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????.@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????.@:S O
+
_output_shapes
:?????????.@
 
_user_specified_nameinputs
?
b
)__inference_dropout_1_layer_call_fn_27784

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_27238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
C
'__inference_dropout_layer_call_fn_27670

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_27094d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????.@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????.@:S O
+
_output_shapes
:?????????.@
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27743

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :s

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????,@?
MaxPoolMaxPoolExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
q
SqueezeSqueezeMaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims
\
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,@:S O
+
_output_shapes
:?????????,@
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27057

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
a
E__inference_activation_layer_call_and_return_conditional_losses_27180

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
E__inference_sequential_layer_call_and_return_conditional_losses_27183

inputs"
conv1d_27084:@
conv1d_27086:@$
conv1d_1_27113:@@
conv1d_1_27115:@
dense_27147:	?
dense_27149:
dense_1_27170:
dense_1_27172:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_27084conv1d_27086*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_27083?
dropout/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_27094?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv1d_1_27113conv1d_1_27115*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27112?
max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27125?
flatten/PartitionedCallPartitionedCall&max_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27133?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27147dense_27149*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27146?
dropout_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_27157?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_27170dense_1_27172*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27169?
activation/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_27180r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
(__inference_conv1d_1_layer_call_fn_27701

inputs
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27112s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????,@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????.@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????.@
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_27146

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
'__inference_dropout_layer_call_fn_27675

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_27292s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????.@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????.@22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????.@
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_27133

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
*__inference_sequential_layer_call_fn_27526

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:	?
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_27357o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
'__inference_dense_1_layer_call_fn_27810

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27169o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27125

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :s

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????,@?
MaxPoolMaxPoolExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
q
SqueezeSqueezeMaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims
\
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,@:S O
+
_output_shapes
:?????????,@
 
_user_specified_nameinputs
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_27083

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.@*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????.@*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????.@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????.@?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
I
-__inference_max_pooling1d_layer_call_fn_27722

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27057v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_27169

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_27754

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_27763

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_activation_layer_call_and_return_conditional_losses_27830

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_activation_layer_call_fn_27825

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_27180`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_sequential_layer_call_fn_27202
conv1d_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:	?
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_27183o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????2
&
_user_specified_nameconv1d_input
?	
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_27238

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27112

inputsA
+conv1d_expanddims_1_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????.@?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????,@*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????,@*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????,@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????,@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????,@?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????.@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????.@
 
_user_specified_nameinputs
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_27665

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.@*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????.@*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????.@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????.@?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?$
?
E__inference_sequential_layer_call_and_return_conditional_losses_27426
conv1d_input"
conv1d_27400:@
conv1d_27402:@$
conv1d_1_27406:@@
conv1d_1_27408:@
dense_27413:	?
dense_27415:
dense_1_27419:
dense_1_27421:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallconv1d_inputconv1d_27400conv1d_27402*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_27083?
dropout/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_27094?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv1d_1_27406conv1d_1_27408*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27112?
max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27125?
flatten/PartitionedCallPartitionedCall&max_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27133?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27413dense_27415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27146?
dropout_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_27157?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_27419dense_1_27421*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27169?
activation/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_27180r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????2
&
_user_specified_nameconv1d_input
?H
?
E__inference_sequential_layer_call_and_return_conditional_losses_27640

inputsH
2conv1d_conv1d_expanddims_1_readvariableop_resource:@4
&conv1d_biasadd_readvariableop_resource:@J
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:@@6
(conv1d_1_biasadd_readvariableop_resource:@7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOpg
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsinputs%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2?
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@?
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.@*
paddingVALID*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*+
_output_shapes
:?????????.@*
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.@b
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:?????????.@Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout/dropout/MulMulconv1d/Relu:activations:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:?????????.@^
dropout/dropout/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????.@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????.@?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????.@?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????.@i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsdropout/dropout/Mul_1:z:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????.@?
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@?
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????,@*
paddingVALID*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:?????????,@*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????,@f
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????,@^
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d/ExpandDims
ExpandDimsconv1d_1/Relu:activations:0%max_pooling1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????,@?
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten/ReshapeReshapemax_pooling1d/Squeeze:output:0flatten/Const:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_1/dropout/MulMuldense/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????_
dropout_1/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:??????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_1/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
activation/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????k
IdentityIdentityactivation/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
C
'__inference_flatten_layer_call_fn_27748

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27133a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
*__inference_sequential_layer_call_fn_27505

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:	?
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_27183o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_27094

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????.@_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????.@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????.@:S O
+
_output_shapes
:?????????.@
 
_user_specified_nameinputs
?&
?
E__inference_sequential_layer_call_and_return_conditional_losses_27455
conv1d_input"
conv1d_27429:@
conv1d_27431:@$
conv1d_1_27435:@@
conv1d_1_27437:@
dense_27442:	?
dense_27444:
dense_1_27448:
dense_1_27450:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallconv1d_inputconv1d_27429conv1d_27431*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_27083?
dropout/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_27292?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv1d_1_27435conv1d_1_27437*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27112?
max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27125?
flatten/PartitionedCallPartitionedCall&max_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27133?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27442dense_27444*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27146?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_27238?
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_27448dense_1_27450*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27169?
activation/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_27180r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????2
&
_user_specified_nameconv1d_input
?C
?
 __inference__wrapped_model_27045
conv1d_inputS
=sequential_conv1d_conv1d_expanddims_1_readvariableop_resource:@?
1sequential_conv1d_biasadd_readvariableop_resource:@U
?sequential_conv1d_1_conv1d_expanddims_1_readvariableop_resource:@@A
3sequential_conv1d_1_biasadd_readvariableop_resource:@B
/sequential_dense_matmul_readvariableop_resource:	?>
0sequential_dense_biasadd_readvariableop_resource:C
1sequential_dense_1_matmul_readvariableop_resource:@
2sequential_dense_1_biasadd_readvariableop_resource:
identity??(sequential/conv1d/BiasAdd/ReadVariableOp?4sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOp?*sequential/conv1d_1/BiasAdd/ReadVariableOp?6sequential/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOpr
'sequential/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential/conv1d/Conv1D/ExpandDims
ExpandDimsconv1d_input0sequential/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2?
4sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp=sequential_conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0k
)sequential/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential/conv1d/Conv1D/ExpandDims_1
ExpandDims<sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:02sequential/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@?
sequential/conv1d/Conv1DConv2D,sequential/conv1d/Conv1D/ExpandDims:output:0.sequential/conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.@*
paddingVALID*
strides
?
 sequential/conv1d/Conv1D/SqueezeSqueeze!sequential/conv1d/Conv1D:output:0*
T0*+
_output_shapes
:?????????.@*
squeeze_dims

??????????
(sequential/conv1d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv1d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/conv1d/BiasAddBiasAdd)sequential/conv1d/Conv1D/Squeeze:output:00sequential/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.@x
sequential/conv1d/ReluRelu"sequential/conv1d/BiasAdd:output:0*
T0*+
_output_shapes
:?????????.@?
sequential/dropout/IdentityIdentity$sequential/conv1d/Relu:activations:0*
T0*+
_output_shapes
:?????????.@t
)sequential/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential/conv1d_1/Conv1D/ExpandDims
ExpandDims$sequential/dropout/Identity:output:02sequential/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????.@?
6sequential/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?sequential_conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0m
+sequential/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential/conv1d_1/Conv1D/ExpandDims_1
ExpandDims>sequential/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:04sequential/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@?
sequential/conv1d_1/Conv1DConv2D.sequential/conv1d_1/Conv1D/ExpandDims:output:00sequential/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????,@*
paddingVALID*
strides
?
"sequential/conv1d_1/Conv1D/SqueezeSqueeze#sequential/conv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:?????????,@*
squeeze_dims

??????????
*sequential/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/conv1d_1/BiasAddBiasAdd+sequential/conv1d_1/Conv1D/Squeeze:output:02sequential/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????,@|
sequential/conv1d_1/ReluRelu$sequential/conv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????,@i
'sequential/max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential/max_pooling1d/ExpandDims
ExpandDims&sequential/conv1d_1/Relu:activations:00sequential/max_pooling1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????,@?
 sequential/max_pooling1d/MaxPoolMaxPool,sequential/max_pooling1d/ExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 sequential/max_pooling1d/SqueezeSqueeze)sequential/max_pooling1d/MaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
sequential/flatten/ReshapeReshape)sequential/max_pooling1d/Squeeze:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:???????????
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
sequential/dropout_1/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*'
_output_shapes
:??????????
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential/dense_1/MatMulMatMul&sequential/dropout_1/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
sequential/activation/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential/activation/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp)^sequential/conv1d/BiasAdd/ReadVariableOp5^sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOp+^sequential/conv1d_1/BiasAdd/ReadVariableOp7^sequential/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 2T
(sequential/conv1d/BiasAdd/ReadVariableOp(sequential/conv1d/BiasAdd/ReadVariableOp2l
4sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOp4sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2X
*sequential/conv1d_1/BiasAdd/ReadVariableOp*sequential/conv1d_1/BiasAdd/ReadVariableOp2p
6sequential/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp6sequential/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:Y U
+
_output_shapes
:?????????2
&
_user_specified_nameconv1d_input
?&
?
E__inference_sequential_layer_call_and_return_conditional_losses_27357

inputs"
conv1d_27331:@
conv1d_27333:@$
conv1d_1_27337:@@
conv1d_1_27339:@
dense_27344:	?
dense_27346:
dense_1_27350:
dense_1_27352:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_27331conv1d_27333*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_27083?
dropout/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_27292?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv1d_1_27337conv1d_1_27339*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????,@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27112?
max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27125?
flatten/PartitionedCallPartitionedCall&max_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27133?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27344dense_27346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27146?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_27238?
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_27350dense_1_27352*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27169?
activation/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_27180r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????2: : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

a
B__inference_dropout_layer_call_and_return_conditional_losses_27692

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????.@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????.@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????.@s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????.@m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????.@]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????.@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????.@:S O
+
_output_shapes
:?????????.@
 
_user_specified_nameinputs
?
?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27717

inputsA
+conv1d_expanddims_1_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????.@?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????,@*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????,@*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????,@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????,@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????,@?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????.@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????.@
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_27820

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_27157

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
conv1d_input9
serving_default_conv1d_input:0?????????2>

activation0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
8	variables
9trainable_variables
:regularization_losses
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
<iter

=beta_1

>beta_2
	?decay
@learning_ratem~mm?m?(m?)m?2m?3m?v?v?v?v?(v?)v?2v?3v?"
	optimizer
X
0
1
2
3
(4
)5
26
37"
trackable_list_wrapper
X
0
1
2
3
(4
)5
26
37"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
#:!@2conv1d/kernel
:@2conv1d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:#@@2conv1d_1/kernel
:@2conv1d_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
 	variables
!trainable_variables
"regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
$	variables
%trainable_variables
&regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	?2dense/kernel
:2
dense/bias
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
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
*	variables
+trainable_variables
,regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
.	variables
/trainable_variables
0regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
:2dense_1/bias
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
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
4	variables
5trainable_variables
6regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
8	variables
9trainable_variables
:regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
N
	utotal
	vcount
w	variables
x	keras_api"
_tf_keras_metric
^
	ytotal
	zcount
{
_fn_kwargs
|	variables
}	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
u0
v1"
trackable_list_wrapper
-
w	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
y0
z1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
(:&@2Adam/conv1d/kernel/m
:@2Adam/conv1d/bias/m
*:(@@2Adam/conv1d_1/kernel/m
 :@2Adam/conv1d_1/bias/m
$:"	?2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
(:&@2Adam/conv1d/kernel/v
:@2Adam/conv1d/bias/v
*:(@@2Adam/conv1d_1/kernel/v
 :@2Adam/conv1d_1/bias/v
$:"	?2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
?2?
*__inference_sequential_layer_call_fn_27202
*__inference_sequential_layer_call_fn_27505
*__inference_sequential_layer_call_fn_27526
*__inference_sequential_layer_call_fn_27397?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_27576
E__inference_sequential_layer_call_and_return_conditional_losses_27640
E__inference_sequential_layer_call_and_return_conditional_losses_27426
E__inference_sequential_layer_call_and_return_conditional_losses_27455?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_27045conv1d_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_conv1d_layer_call_fn_27649?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv1d_layer_call_and_return_conditional_losses_27665?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dropout_layer_call_fn_27670
'__inference_dropout_layer_call_fn_27675?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dropout_layer_call_and_return_conditional_losses_27680
B__inference_dropout_layer_call_and_return_conditional_losses_27692?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_conv1d_1_layer_call_fn_27701?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27717?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_max_pooling1d_layer_call_fn_27722
-__inference_max_pooling1d_layer_call_fn_27727?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27735
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27743?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_flatten_layer_call_fn_27748?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_flatten_layer_call_and_return_conditional_losses_27754?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_27763?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_27774?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_1_layer_call_fn_27779
)__inference_dropout_1_layer_call_fn_27784?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_1_layer_call_and_return_conditional_losses_27789
D__inference_dropout_1_layer_call_and_return_conditional_losses_27801?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_27810?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_27820?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_activation_layer_call_fn_27825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_activation_layer_call_and_return_conditional_losses_27830?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_27484conv1d_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_27045~()239?6
/?,
*?'
conv1d_input?????????2
? "7?4
2

activation$?!

activation??????????
E__inference_activation_layer_call_and_return_conditional_losses_27830X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? y
*__inference_activation_layer_call_fn_27825K/?,
%?"
 ?
inputs?????????
? "???????????
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27717d3?0
)?&
$?!
inputs?????????.@
? ")?&
?
0?????????,@
? ?
(__inference_conv1d_1_layer_call_fn_27701W3?0
)?&
$?!
inputs?????????.@
? "??????????,@?
A__inference_conv1d_layer_call_and_return_conditional_losses_27665d3?0
)?&
$?!
inputs?????????2
? ")?&
?
0?????????.@
? ?
&__inference_conv1d_layer_call_fn_27649W3?0
)?&
$?!
inputs?????????2
? "??????????.@?
B__inference_dense_1_layer_call_and_return_conditional_losses_27820\23/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_1_layer_call_fn_27810O23/?,
%?"
 ?
inputs?????????
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_27774]()0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? y
%__inference_dense_layer_call_fn_27763P()0?-
&?#
!?
inputs??????????
? "???????????
D__inference_dropout_1_layer_call_and_return_conditional_losses_27789\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_27801\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? |
)__inference_dropout_1_layer_call_fn_27779O3?0
)?&
 ?
inputs?????????
p 
? "??????????|
)__inference_dropout_1_layer_call_fn_27784O3?0
)?&
 ?
inputs?????????
p
? "???????????
B__inference_dropout_layer_call_and_return_conditional_losses_27680d7?4
-?*
$?!
inputs?????????.@
p 
? ")?&
?
0?????????.@
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_27692d7?4
-?*
$?!
inputs?????????.@
p
? ")?&
?
0?????????.@
? ?
'__inference_dropout_layer_call_fn_27670W7?4
-?*
$?!
inputs?????????.@
p 
? "??????????.@?
'__inference_dropout_layer_call_fn_27675W7?4
-?*
$?!
inputs?????????.@
p
? "??????????.@?
B__inference_flatten_layer_call_and_return_conditional_losses_27754]3?0
)?&
$?!
inputs?????????@
? "&?#
?
0??????????
? {
'__inference_flatten_layer_call_fn_27748P3?0
)?&
$?!
inputs?????????@
? "????????????
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27735?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_27743`3?0
)?&
$?!
inputs?????????,@
? ")?&
?
0?????????@
? ?
-__inference_max_pooling1d_layer_call_fn_27722wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
-__inference_max_pooling1d_layer_call_fn_27727S3?0
)?&
$?!
inputs?????????,@
? "??????????@?
E__inference_sequential_layer_call_and_return_conditional_losses_27426t()23A?>
7?4
*?'
conv1d_input?????????2
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_27455t()23A?>
7?4
*?'
conv1d_input?????????2
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_27576n()23;?8
1?.
$?!
inputs?????????2
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_27640n()23;?8
1?.
$?!
inputs?????????2
p

 
? "%?"
?
0?????????
? ?
*__inference_sequential_layer_call_fn_27202g()23A?>
7?4
*?'
conv1d_input?????????2
p 

 
? "???????????
*__inference_sequential_layer_call_fn_27397g()23A?>
7?4
*?'
conv1d_input?????????2
p

 
? "???????????
*__inference_sequential_layer_call_fn_27505a()23;?8
1?.
$?!
inputs?????????2
p 

 
? "???????????
*__inference_sequential_layer_call_fn_27526a()23;?8
1?.
$?!
inputs?????????2
p

 
? "???????????
#__inference_signature_wrapper_27484?()23I?F
? 
??<
:
conv1d_input*?'
conv1d_input?????????2"7?4
2

activation$?!

activation?????????
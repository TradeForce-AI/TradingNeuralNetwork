Не	
оФ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
Й
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
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.4.12v2.4.0-49-g85c8b2a817f8╗Х
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	ђ*
dtype0
s
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_12/bias
l
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes	
:ђ*
dtype0
|
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ* 
shared_namedense_13/kernel
u
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel* 
_output_shapes
:
ђђ*
dtype0
s
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_13/bias
l
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes	
:ђ*
dtype0
{
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@* 
shared_namedense_14/kernel
t
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes
:	ђ@*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:@*
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:@*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
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
Ѕ
Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*'
shared_nameAdam/dense_12/kernel/m
ѓ
*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes
:	ђ*
dtype0
Ђ
Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/dense_12/bias/m
z
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes	
:ђ*
dtype0
і
Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*'
shared_nameAdam/dense_13/kernel/m
Ѓ
*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m* 
_output_shapes
:
ђђ*
dtype0
Ђ
Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/dense_13/bias/m
z
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes	
:ђ*
dtype0
Ѕ
Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*'
shared_nameAdam/dense_14/kernel/m
ѓ
*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes
:	ђ@*
dtype0
ђ
Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_15/kernel/m
Ђ
*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes

:@*
dtype0
ђ
Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:*
dtype0
Ѕ
Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*'
shared_nameAdam/dense_12/kernel/v
ѓ
*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes
:	ђ*
dtype0
Ђ
Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/dense_12/bias/v
z
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes	
:ђ*
dtype0
і
Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*'
shared_nameAdam/dense_13/kernel/v
Ѓ
*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v* 
_output_shapes
:
ђђ*
dtype0
Ђ
Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/dense_13/bias/v
z
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes	
:ђ*
dtype0
Ѕ
Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*'
shared_nameAdam/dense_14/kernel/v
ѓ
*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes
:	ђ@*
dtype0
ђ
Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_15/kernel/v
Ђ
*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes

:@*
dtype0
ђ
Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ш4
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*▒4
valueД4Bц4 BЮ4
┤
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
R
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
 	variables
!	keras_api
h

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
h

(kernel
)bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
R
.trainable_variables
/regularization_losses
0	variables
1	keras_api
л
2iter

3beta_1

4beta_2
	5decay
6learning_ratemjmkmlmm"mn#mo(mp)mqvrvsvtvu"vv#vw(vx)vy
8
0
1
2
3
"4
#5
(6
)7
 
8
0
1
2
3
"4
#5
(6
)7
Г
7non_trainable_variables
8metrics
9layer_regularization_losses

:layers
	trainable_variables

regularization_losses
	variables
;layer_metrics
 
 
 
 
Г
<metrics
=layer_regularization_losses

>layers
trainable_variables
?layer_metrics
regularization_losses
	variables
@non_trainable_variables
 
 
 
Г
Ametrics
Blayer_regularization_losses

Clayers
trainable_variables
Dlayer_metrics
regularization_losses
	variables
Enon_trainable_variables
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
Г
Fmetrics
Glayer_regularization_losses

Hlayers
trainable_variables
Ilayer_metrics
regularization_losses
	variables
Jnon_trainable_variables
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
Г
Kmetrics
Llayer_regularization_losses

Mlayers
trainable_variables
Nlayer_metrics
regularization_losses
 	variables
Onon_trainable_variables
[Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_14/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
Г
Pmetrics
Qlayer_regularization_losses

Rlayers
$trainable_variables
Slayer_metrics
%regularization_losses
&	variables
Tnon_trainable_variables
[Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1
 

(0
)1
Г
Umetrics
Vlayer_regularization_losses

Wlayers
*trainable_variables
Xlayer_metrics
+regularization_losses
,	variables
Ynon_trainable_variables
 
 
 
Г
Zmetrics
[layer_regularization_losses

\layers
.trainable_variables
]layer_metrics
/regularization_losses
0	variables
^non_trainable_variables
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

_0
`1
 
1
0
1
2
3
4
5
6
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
	atotal
	bcount
c	variables
d	keras_api
D
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

a0
b1

c	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

h	variables
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lambda_4_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
╠
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_4_inputdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_62755
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ц
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOpConst*.
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
GPU 2J 8ѓ *'
f"R 
__inference__traced_save_63279
І
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/dense_15/kernel/vAdam/dense_15/bias/v*-
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
GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_63388█ф
Љ	
▄
C__inference_dense_15_layer_call_and_return_conditional_losses_62562

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Џ
њ
G__inference_sequential_4_layer_call_and_return_conditional_losses_62705

inputs
dense_12_62683
dense_12_62685
dense_13_62688
dense_13_62690
dense_14_62693
dense_14_62695
dense_15_62698
dense_15_62700
identityѕб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCallО
lambda_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_624442
lambda_4/PartitionedCallы
flatten_3/PartitionedCallPartitionedCall!lambda_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_624632
flatten_3/PartitionedCall«
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_12_62683dense_12_62685*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_624822"
 dense_12/StatefulPartitionedCallх
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_62688dense_13_62690*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_625092"
 dense_13/StatefulPartitionedCall┤
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_62693dense_14_62695*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_625362"
 dense_14/StatefulPartitionedCall┤
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_62698dense_15_62700*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_625622"
 dense_15/StatefulPartitionedCall§
reshape_4/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_reshape_4_layer_call_and_return_conditional_losses_625912
reshape_4/PartitionedCallє
IdentityIdentity"reshape_4/PartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
§H
Ј
 __inference__wrapped_model_62424
lambda_4_input8
4sequential_4_dense_12_matmul_readvariableop_resource9
5sequential_4_dense_12_biasadd_readvariableop_resource8
4sequential_4_dense_13_matmul_readvariableop_resource9
5sequential_4_dense_13_biasadd_readvariableop_resource8
4sequential_4_dense_14_matmul_readvariableop_resource9
5sequential_4_dense_14_biasadd_readvariableop_resource8
4sequential_4_dense_15_matmul_readvariableop_resource9
5sequential_4_dense_15_biasadd_readvariableop_resource
identityѕб,sequential_4/dense_12/BiasAdd/ReadVariableOpб+sequential_4/dense_12/MatMul/ReadVariableOpб,sequential_4/dense_13/BiasAdd/ReadVariableOpб+sequential_4/dense_13/MatMul/ReadVariableOpб,sequential_4/dense_14/BiasAdd/ReadVariableOpб+sequential_4/dense_14/MatMul/ReadVariableOpб,sequential_4/dense_15/BiasAdd/ReadVariableOpб+sequential_4/dense_15/MatMul/ReadVariableOpФ
)sequential_4/lambda_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2+
)sequential_4/lambda_4/strided_slice/stack»
+sequential_4/lambda_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2-
+sequential_4/lambda_4/strided_slice/stack_1»
+sequential_4/lambda_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2-
+sequential_4/lambda_4/strided_slice/stack_2№
#sequential_4/lambda_4/strided_sliceStridedSlicelambda_4_input2sequential_4/lambda_4/strided_slice/stack:output:04sequential_4/lambda_4/strided_slice/stack_1:output:04sequential_4/lambda_4/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask2%
#sequential_4/lambda_4/strided_sliceЇ
sequential_4/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
sequential_4/flatten_3/Constм
sequential_4/flatten_3/ReshapeReshape,sequential_4/lambda_4/strided_slice:output:0%sequential_4/flatten_3/Const:output:0*
T0*'
_output_shapes
:         2 
sequential_4/flatten_3/Reshapeл
+sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02-
+sequential_4/dense_12/MatMul/ReadVariableOpО
sequential_4/dense_12/MatMulMatMul'sequential_4/flatten_3/Reshape:output:03sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
sequential_4/dense_12/MatMul¤
,sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02.
,sequential_4/dense_12/BiasAdd/ReadVariableOp┌
sequential_4/dense_12/BiasAddBiasAdd&sequential_4/dense_12/MatMul:product:04sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
sequential_4/dense_12/BiasAddЏ
sequential_4/dense_12/ReluRelu&sequential_4/dense_12/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
sequential_4/dense_12/ReluЛ
+sequential_4/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02-
+sequential_4/dense_13/MatMul/ReadVariableOpп
sequential_4/dense_13/MatMulMatMul(sequential_4/dense_12/Relu:activations:03sequential_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
sequential_4/dense_13/MatMul¤
,sequential_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02.
,sequential_4/dense_13/BiasAdd/ReadVariableOp┌
sequential_4/dense_13/BiasAddBiasAdd&sequential_4/dense_13/MatMul:product:04sequential_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
sequential_4/dense_13/BiasAddЏ
sequential_4/dense_13/ReluRelu&sequential_4/dense_13/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
sequential_4/dense_13/Reluл
+sequential_4/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_14_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02-
+sequential_4/dense_14/MatMul/ReadVariableOpО
sequential_4/dense_14/MatMulMatMul(sequential_4/dense_13/Relu:activations:03sequential_4/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
sequential_4/dense_14/MatMul╬
,sequential_4/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_4/dense_14/BiasAdd/ReadVariableOp┘
sequential_4/dense_14/BiasAddBiasAdd&sequential_4/dense_14/MatMul:product:04sequential_4/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
sequential_4/dense_14/BiasAddџ
sequential_4/dense_14/ReluRelu&sequential_4/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
sequential_4/dense_14/Relu¤
+sequential_4/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_15_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02-
+sequential_4/dense_15/MatMul/ReadVariableOpО
sequential_4/dense_15/MatMulMatMul(sequential_4/dense_14/Relu:activations:03sequential_4/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_4/dense_15/MatMul╬
,sequential_4/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_4/dense_15/BiasAdd/ReadVariableOp┘
sequential_4/dense_15/BiasAddBiasAdd&sequential_4/dense_15/MatMul:product:04sequential_4/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_4/dense_15/BiasAddњ
sequential_4/reshape_4/ShapeShape&sequential_4/dense_15/BiasAdd:output:0*
T0*
_output_shapes
:2
sequential_4/reshape_4/Shapeб
*sequential_4/reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_4/reshape_4/strided_slice/stackд
,sequential_4/reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/reshape_4/strided_slice/stack_1д
,sequential_4/reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/reshape_4/strided_slice/stack_2В
$sequential_4/reshape_4/strided_sliceStridedSlice%sequential_4/reshape_4/Shape:output:03sequential_4/reshape_4/strided_slice/stack:output:05sequential_4/reshape_4/strided_slice/stack_1:output:05sequential_4/reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_4/reshape_4/strided_sliceњ
&sequential_4/reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/reshape_4/Reshape/shape/1њ
&sequential_4/reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/reshape_4/Reshape/shape/2Њ
$sequential_4/reshape_4/Reshape/shapePack-sequential_4/reshape_4/strided_slice:output:0/sequential_4/reshape_4/Reshape/shape/1:output:0/sequential_4/reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_4/reshape_4/Reshape/shapeп
sequential_4/reshape_4/ReshapeReshape&sequential_4/dense_15/BiasAdd:output:0-sequential_4/reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:         2 
sequential_4/reshape_4/Reshapeз
IdentityIdentity'sequential_4/reshape_4/Reshape:output:0-^sequential_4/dense_12/BiasAdd/ReadVariableOp,^sequential_4/dense_12/MatMul/ReadVariableOp-^sequential_4/dense_13/BiasAdd/ReadVariableOp,^sequential_4/dense_13/MatMul/ReadVariableOp-^sequential_4/dense_14/BiasAdd/ReadVariableOp,^sequential_4/dense_14/MatMul/ReadVariableOp-^sequential_4/dense_15/BiasAdd/ReadVariableOp,^sequential_4/dense_15/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::2\
,sequential_4/dense_12/BiasAdd/ReadVariableOp,sequential_4/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_12/MatMul/ReadVariableOp+sequential_4/dense_12/MatMul/ReadVariableOp2\
,sequential_4/dense_13/BiasAdd/ReadVariableOp,sequential_4/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_13/MatMul/ReadVariableOp+sequential_4/dense_13/MatMul/ReadVariableOp2\
,sequential_4/dense_14/BiasAdd/ReadVariableOp,sequential_4/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_14/MatMul/ReadVariableOp+sequential_4/dense_14/MatMul/ReadVariableOp2\
,sequential_4/dense_15/BiasAdd/ReadVariableOp,sequential_4/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_15/MatMul/ReadVariableOp+sequential_4/dense_15/MatMul/ReadVariableOp:[ W
+
_output_shapes
:         
(
_user_specified_namelambda_4_input
┌
}
(__inference_dense_15_layer_call_fn_63139

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_625622
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
│
█
,__inference_sequential_4_layer_call_fn_63002

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_626572
StatefulPartitionedCallњ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ы9
Т
G__inference_sequential_4_layer_call_and_return_conditional_losses_62801
lambda_4_input+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource
identityѕбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpбdense_13/MatMul/ReadVariableOpбdense_14/BiasAdd/ReadVariableOpбdense_14/MatMul/ReadVariableOpбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpЉ
lambda_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda_4/strided_slice/stackЋ
lambda_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2 
lambda_4/strided_slice/stack_1Ћ
lambda_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2 
lambda_4/strided_slice/stack_2«
lambda_4/strided_sliceStridedSlicelambda_4_input%lambda_4/strided_slice/stack:output:0'lambda_4/strided_slice/stack_1:output:0'lambda_4/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask2
lambda_4/strided_slices
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_3/Constъ
flatten_3/ReshapeReshapelambda_4/strided_slice:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:         2
flatten_3/ReshapeЕ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02 
dense_12/MatMul/ReadVariableOpБ
dense_12/MatMulMatMulflatten_3/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_12/MatMulе
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
dense_12/BiasAdd/ReadVariableOpд
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_12/BiasAddt
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_12/Reluф
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02 
dense_13/MatMul/ReadVariableOpц
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_13/MatMulе
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
dense_13/BiasAdd/ReadVariableOpд
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_13/BiasAddt
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_13/ReluЕ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02 
dense_14/MatMul/ReadVariableOpБ
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_14/MatMulД
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_14/BiasAdd/ReadVariableOpЦ
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_14/BiasAdds
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_14/Reluе
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_15/MatMul/ReadVariableOpБ
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/MatMulД
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOpЦ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/BiasAddk
reshape_4/ShapeShapedense_15/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_4/Shapeѕ
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_4/strided_slice/stackї
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_1ї
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_2ъ
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_4/strided_slicex
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/1x
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/2м
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_4/Reshape/shapeц
reshape_4/ReshapeReshapedense_15/BiasAdd:output:0 reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
reshape_4/Reshape■
IdentityIdentityreshape_4/Reshape:output:0 ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:[ W
+
_output_shapes
:         
(
_user_specified_namelambda_4_input
вG
┐
__inference__traced_save_63279
file_prefix.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameк
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*п
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╠
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesФ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*§
_input_shapesв
У: :	ђ:ђ:
ђђ:ђ:	ђ@:@:@:: : : : : : : : : :	ђ:ђ:
ђђ:ђ:	ђ@:@:@::	ђ:ђ:
ђђ:ђ:	ђ@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	ђ:!

_output_shapes	
:ђ:&"
 
_output_shapes
:
ђђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::	
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
: :%!

_output_shapes
:	ђ:!

_output_shapes	
:ђ:&"
 
_output_shapes
:
ђђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	ђ:!

_output_shapes	
:ђ:&"
 
_output_shapes
:
ђђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ@: 

_output_shapes
:@:$  

_output_shapes

:@: !

_output_shapes
::"

_output_shapes
: 
╦
с
,__inference_sequential_4_layer_call_fn_62868
lambda_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCalllambda_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_626572
StatefulPartitionedCallњ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelambda_4_input
Щ
_
C__inference_lambda_4_layer_call_and_return_conditional_losses_63039

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stackЃ
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1Ѓ
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2щ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask2
strided_slicen
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Щ
_
C__inference_lambda_4_layer_call_and_return_conditional_losses_63031

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stackЃ
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1Ѓ
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2щ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask2
strided_slicen
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
џ
E
)__inference_flatten_3_layer_call_fn_63060

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_624632
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ш	
▄
C__inference_dense_13_layer_call_and_return_conditional_losses_62509

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
Reluў
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
П
`
D__inference_reshape_4_layer_call_and_return_conditional_losses_62591

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2а
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
а
D
(__inference_lambda_4_layer_call_fn_63049

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_624442
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
я
}
(__inference_dense_13_layer_call_fn_63100

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_625092
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
џ
E
)__inference_reshape_4_layer_call_fn_63157

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_reshape_4_layer_call_and_return_conditional_losses_625912
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┌9
я
G__inference_sequential_4_layer_call_and_return_conditional_losses_62935

inputs+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource
identityѕбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpбdense_13/MatMul/ReadVariableOpбdense_14/BiasAdd/ReadVariableOpбdense_14/MatMul/ReadVariableOpбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpЉ
lambda_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda_4/strided_slice/stackЋ
lambda_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2 
lambda_4/strided_slice/stack_1Ћ
lambda_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2 
lambda_4/strided_slice/stack_2д
lambda_4/strided_sliceStridedSliceinputs%lambda_4/strided_slice/stack:output:0'lambda_4/strided_slice/stack_1:output:0'lambda_4/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask2
lambda_4/strided_slices
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_3/Constъ
flatten_3/ReshapeReshapelambda_4/strided_slice:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:         2
flatten_3/ReshapeЕ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02 
dense_12/MatMul/ReadVariableOpБ
dense_12/MatMulMatMulflatten_3/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_12/MatMulе
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
dense_12/BiasAdd/ReadVariableOpд
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_12/BiasAddt
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_12/Reluф
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02 
dense_13/MatMul/ReadVariableOpц
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_13/MatMulе
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
dense_13/BiasAdd/ReadVariableOpд
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_13/BiasAddt
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_13/ReluЕ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02 
dense_14/MatMul/ReadVariableOpБ
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_14/MatMulД
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_14/BiasAdd/ReadVariableOpЦ
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_14/BiasAdds
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_14/Reluе
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_15/MatMul/ReadVariableOpБ
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/MatMulД
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOpЦ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/BiasAddk
reshape_4/ShapeShapedense_15/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_4/Shapeѕ
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_4/strided_slice/stackї
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_1ї
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_2ъ
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_4/strided_slicex
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/1x
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/2м
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_4/Reshape/shapeц
reshape_4/ReshapeReshapedense_15/BiasAdd:output:0 reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
reshape_4/Reshape■
IdentityIdentityreshape_4/Reshape:output:0 ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
­	
▄
C__inference_dense_14_layer_call_and_return_conditional_losses_62536

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЌ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ы9
Т
G__inference_sequential_4_layer_call_and_return_conditional_losses_62847
lambda_4_input+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource
identityѕбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpбdense_13/MatMul/ReadVariableOpбdense_14/BiasAdd/ReadVariableOpбdense_14/MatMul/ReadVariableOpбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpЉ
lambda_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda_4/strided_slice/stackЋ
lambda_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2 
lambda_4/strided_slice/stack_1Ћ
lambda_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2 
lambda_4/strided_slice/stack_2«
lambda_4/strided_sliceStridedSlicelambda_4_input%lambda_4/strided_slice/stack:output:0'lambda_4/strided_slice/stack_1:output:0'lambda_4/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask2
lambda_4/strided_slices
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_3/Constъ
flatten_3/ReshapeReshapelambda_4/strided_slice:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:         2
flatten_3/ReshapeЕ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02 
dense_12/MatMul/ReadVariableOpБ
dense_12/MatMulMatMulflatten_3/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_12/MatMulе
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
dense_12/BiasAdd/ReadVariableOpд
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_12/BiasAddt
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_12/Reluф
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02 
dense_13/MatMul/ReadVariableOpц
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_13/MatMulе
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
dense_13/BiasAdd/ReadVariableOpд
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_13/BiasAddt
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_13/ReluЕ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02 
dense_14/MatMul/ReadVariableOpБ
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_14/MatMulД
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_14/BiasAdd/ReadVariableOpЦ
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_14/BiasAdds
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_14/Reluе
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_15/MatMul/ReadVariableOpБ
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/MatMulД
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOpЦ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/BiasAddk
reshape_4/ShapeShapedense_15/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_4/Shapeѕ
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_4/strided_slice/stackї
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_1ї
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_2ъ
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_4/strided_slicex
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/1x
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/2м
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_4/Reshape/shapeц
reshape_4/ReshapeReshapedense_15/BiasAdd:output:0 reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
reshape_4/Reshape■
IdentityIdentityreshape_4/Reshape:output:0 ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:[ W
+
_output_shapes
:         
(
_user_specified_namelambda_4_input
П
`
D__inference_reshape_4_layer_call_and_return_conditional_losses_63152

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2а
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
а
D
(__inference_lambda_4_layer_call_fn_63044

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_624362
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▄
}
(__inference_dense_14_layer_call_fn_63120

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_625362
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
│
█
,__inference_sequential_4_layer_call_fn_63023

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_627052
StatefulPartitionedCallњ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┌9
я
G__inference_sequential_4_layer_call_and_return_conditional_losses_62981

inputs+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource
identityѕбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpбdense_13/MatMul/ReadVariableOpбdense_14/BiasAdd/ReadVariableOpбdense_14/MatMul/ReadVariableOpбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpЉ
lambda_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda_4/strided_slice/stackЋ
lambda_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2 
lambda_4/strided_slice/stack_1Ћ
lambda_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2 
lambda_4/strided_slice/stack_2д
lambda_4/strided_sliceStridedSliceinputs%lambda_4/strided_slice/stack:output:0'lambda_4/strided_slice/stack_1:output:0'lambda_4/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask2
lambda_4/strided_slices
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_3/Constъ
flatten_3/ReshapeReshapelambda_4/strided_slice:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:         2
flatten_3/ReshapeЕ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02 
dense_12/MatMul/ReadVariableOpБ
dense_12/MatMulMatMulflatten_3/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_12/MatMulе
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
dense_12/BiasAdd/ReadVariableOpд
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_12/BiasAddt
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_12/Reluф
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02 
dense_13/MatMul/ReadVariableOpц
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_13/MatMulе
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
dense_13/BiasAdd/ReadVariableOpд
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_13/BiasAddt
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_13/ReluЕ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02 
dense_14/MatMul/ReadVariableOpБ
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_14/MatMulД
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_14/BiasAdd/ReadVariableOpЦ
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_14/BiasAdds
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_14/Reluе
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_15/MatMul/ReadVariableOpБ
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/MatMulД
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOpЦ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/BiasAddk
reshape_4/ShapeShapedense_15/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_4/Shapeѕ
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_4/strided_slice/stackї
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_1ї
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_2ъ
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_4/strided_slicex
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/1x
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/2м
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_4/Reshape/shapeц
reshape_4/ReshapeReshapedense_15/BiasAdd:output:0 reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
reshape_4/Reshape■
IdentityIdentityreshape_4/Reshape:output:0 ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▄
}
(__inference_dense_12_layer_call_fn_63080

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_624822
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ПІ
з
!__inference__traced_restore_63388
file_prefix$
 assignvariableop_dense_12_kernel$
 assignvariableop_1_dense_12_bias&
"assignvariableop_2_dense_13_kernel$
 assignvariableop_3_dense_13_bias&
"assignvariableop_4_dense_14_kernel$
 assignvariableop_5_dense_14_bias&
"assignvariableop_6_dense_15_kernel$
 assignvariableop_7_dense_15_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_1.
*assignvariableop_17_adam_dense_12_kernel_m,
(assignvariableop_18_adam_dense_12_bias_m.
*assignvariableop_19_adam_dense_13_kernel_m,
(assignvariableop_20_adam_dense_13_bias_m.
*assignvariableop_21_adam_dense_14_kernel_m,
(assignvariableop_22_adam_dense_14_bias_m.
*assignvariableop_23_adam_dense_15_kernel_m,
(assignvariableop_24_adam_dense_15_bias_m.
*assignvariableop_25_adam_dense_12_kernel_v,
(assignvariableop_26_adam_dense_12_bias_v.
*assignvariableop_27_adam_dense_13_kernel_v,
(assignvariableop_28_adam_dense_13_bias_v.
*assignvariableop_29_adam_dense_14_kernel_v,
(assignvariableop_30_adam_dense_14_bias_v.
*assignvariableop_31_adam_dense_15_kernel_v,
(assignvariableop_32_adam_dense_15_bias_v
identity_34ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9╠
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*п
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesм
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesп
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ъ
_output_shapesІ
ѕ::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЪ
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ц
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Д
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_13_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ц
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_13_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Д
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_14_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ц
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_14_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Д
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_15_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ц
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_15_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8А
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Б
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Д
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11д
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12«
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13А
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14А
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Б
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Б
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17▓
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_12_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18░
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_12_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19▓
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_13_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20░
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_13_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21▓
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_14_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22░
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_14_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23▓
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_15_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24░
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_15_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25▓
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_12_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26░
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_12_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27▓
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_13_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28░
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_13_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29▓
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_14_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30░
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_14_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31▓
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_15_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32░
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_15_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp┤
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33Д
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*Џ
_input_shapesЅ
є: :::::::::::::::::::::::::::::::::2$
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
╦
с
,__inference_sequential_4_layer_call_fn_62889
lambda_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCalllambda_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_627052
StatefulPartitionedCallњ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelambda_4_input
Щ
_
C__inference_lambda_4_layer_call_and_return_conditional_losses_62444

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stackЃ
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1Ѓ
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2щ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask2
strided_slicen
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
­	
▄
C__inference_dense_14_layer_call_and_return_conditional_losses_63111

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЌ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Љ	
▄
C__inference_dense_15_layer_call_and_return_conditional_losses_63130

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Џ
┌
#__inference_signature_wrapper_62755
lambda_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCalllambda_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_624242
StatefulPartitionedCallњ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelambda_4_input
з	
▄
C__inference_dense_12_layer_call_and_return_conditional_losses_62482

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
Reluў
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Щ
_
C__inference_lambda_4_layer_call_and_return_conditional_losses_62436

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stackЃ
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1Ѓ
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2щ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask2
strided_slicen
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Џ
њ
G__inference_sequential_4_layer_call_and_return_conditional_losses_62657

inputs
dense_12_62635
dense_12_62637
dense_13_62640
dense_13_62642
dense_14_62645
dense_14_62647
dense_15_62650
dense_15_62652
identityѕб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCallО
lambda_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_624362
lambda_4/PartitionedCallы
flatten_3/PartitionedCallPartitionedCall!lambda_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_624632
flatten_3/PartitionedCall«
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_12_62635dense_12_62637*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_624822"
 dense_12/StatefulPartitionedCallх
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_62640dense_13_62642*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_625092"
 dense_13/StatefulPartitionedCall┤
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_62645dense_14_62647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_625362"
 dense_14/StatefulPartitionedCall┤
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_62650dense_15_62652*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_625622"
 dense_15/StatefulPartitionedCall§
reshape_4/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_reshape_4_layer_call_and_return_conditional_losses_625912
reshape_4/PartitionedCallє
IdentityIdentity"reshape_4/PartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:         ::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▓
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_62463

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
з	
▄
C__inference_dense_12_layer_call_and_return_conditional_losses_63071

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
Reluў
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ш	
▄
C__inference_dense_13_layer_call_and_return_conditional_losses_63091

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
Reluў
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
▓
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_63055

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┬
serving_default«
M
lambda_4_input;
 serving_default_lambda_4_input:0         A
	reshape_44
StatefulPartitionedCall:0         tensorflow/serving/predict:┼я
к4
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
z__call__
*{&call_and_return_all_conditional_losses
|_default_save_signature"И1
_tf_keras_sequentialЎ1{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_4_input"}}, {"class_name": "Lambda", "config": {"name": "lambda_4", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAQwAAAHMaAAAAfABkAGQAhQJkAWQAhQJkAGQAhQJmAxkAUwAp\nAk7p/////6kAKQHaAXhyAgAAAHICAAAA+gc8aW5wdXQ+2gg8bGFtYmRhPgIAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_4", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4]}}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 4]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_4_input"}}, {"class_name": "Lambda", "config": {"name": "lambda_4", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAQwAAAHMaAAAAfABkAGQAhQJkAWQAhQJkAGQAhQJmAxkAUwAp\nAk7p/////6kAKQHaAXhyAgAAAHICAAAA+gc8aW5wdXQ+2gg8bGFtYmRhPgIAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_4", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4]}}}]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}}, "metrics": [[{"class_name": "MeanAbsoluteError", "config": {"name": "mean_absolute_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Ъ
trainable_variables
regularization_losses
	variables
	keras_api
}__call__
*~&call_and_return_all_conditional_losses"љ
_tf_keras_layerШ{"class_name": "Lambda", "name": "lambda_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lambda_4", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAQwAAAHMaAAAAfABkAGQAhQJkAWQAhQJkAGQAhQJmAxkAUwAp\nAk7p/////6kAKQHaAXhyAgAAAHICAAAA+gc8aW5wdXQ+2gg8bGFtYmRhPgIAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
у
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+ђ&call_and_return_all_conditional_losses"О
_tf_keras_layerй{"class_name": "Flatten", "name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ы

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses"╩
_tf_keras_layer░{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 4]}}
ш

kernel
bias
trainable_variables
regularization_losses
 	variables
!	keras_api
Ѓ__call__
+ё&call_and_return_all_conditional_losses"╬
_tf_keras_layer┤{"class_name": "Dense", "name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 512]}}
З

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
Ё__call__
+є&call_and_return_all_conditional_losses"═
_tf_keras_layer│{"class_name": "Dense", "name": "dense_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 128]}}
з

(kernel
)bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
Є__call__
+ѕ&call_and_return_all_conditional_losses"╠
_tf_keras_layer▓{"class_name": "Dense", "name": "dense_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 64]}}
Ш
.trainable_variables
/regularization_losses
0	variables
1	keras_api
Ѕ__call__
+і&call_and_return_all_conditional_losses"т
_tf_keras_layer╦{"class_name": "Reshape", "name": "reshape_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_4", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4]}}}
с
2iter

3beta_1

4beta_2
	5decay
6learning_ratemjmkmlmm"mn#mo(mp)mqvrvsvtvu"vv#vw(vx)vy"
	optimizer
X
0
1
2
3
"4
#5
(6
)7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
"4
#5
(6
)7"
trackable_list_wrapper
╩
7non_trainable_variables
8metrics
9layer_regularization_losses

:layers
	trainable_variables

regularization_losses
	variables
;layer_metrics
z__call__
|_default_save_signature
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
-
Іserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
<metrics
=layer_regularization_losses

>layers
trainable_variables
?layer_metrics
regularization_losses
	variables
@non_trainable_variables
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
»
Ametrics
Blayer_regularization_losses

Clayers
trainable_variables
Dlayer_metrics
regularization_losses
	variables
Enon_trainable_variables
__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
": 	ђ2dense_12/kernel
:ђ2dense_12/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
Fmetrics
Glayer_regularization_losses

Hlayers
trainable_variables
Ilayer_metrics
regularization_losses
	variables
Jnon_trainable_variables
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
#:!
ђђ2dense_13/kernel
:ђ2dense_13/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
Kmetrics
Llayer_regularization_losses

Mlayers
trainable_variables
Nlayer_metrics
regularization_losses
 	variables
Onon_trainable_variables
Ѓ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
": 	ђ@2dense_14/kernel
:@2dense_14/bias
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
░
Pmetrics
Qlayer_regularization_losses

Rlayers
$trainable_variables
Slayer_metrics
%regularization_losses
&	variables
Tnon_trainable_variables
Ё__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_15/kernel
:2dense_15/bias
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
░
Umetrics
Vlayer_regularization_losses

Wlayers
*trainable_variables
Xlayer_metrics
+regularization_losses
,	variables
Ynon_trainable_variables
Є__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Zmetrics
[layer_regularization_losses

\layers
.trainable_variables
]layer_metrics
/regularization_losses
0	variables
^non_trainable_variables
Ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
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
╗
	atotal
	bcount
c	variables
d	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
э
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api"░
_tf_keras_metricЋ{"class_name": "MeanAbsoluteError", "name": "mean_absolute_error", "dtype": "float32", "config": {"name": "mean_absolute_error", "dtype": "float32"}}
:  (2total
:  (2count
.
a0
b1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
e0
f1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
':%	ђ2Adam/dense_12/kernel/m
!:ђ2Adam/dense_12/bias/m
(:&
ђђ2Adam/dense_13/kernel/m
!:ђ2Adam/dense_13/bias/m
':%	ђ@2Adam/dense_14/kernel/m
 :@2Adam/dense_14/bias/m
&:$@2Adam/dense_15/kernel/m
 :2Adam/dense_15/bias/m
':%	ђ2Adam/dense_12/kernel/v
!:ђ2Adam/dense_12/bias/v
(:&
ђђ2Adam/dense_13/kernel/v
!:ђ2Adam/dense_13/bias/v
':%	ђ@2Adam/dense_14/kernel/v
 :@2Adam/dense_14/bias/v
&:$@2Adam/dense_15/kernel/v
 :2Adam/dense_15/bias/v
■2ч
,__inference_sequential_4_layer_call_fn_62868
,__inference_sequential_4_layer_call_fn_62889
,__inference_sequential_4_layer_call_fn_63002
,__inference_sequential_4_layer_call_fn_63023└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ж2у
G__inference_sequential_4_layer_call_and_return_conditional_losses_62981
G__inference_sequential_4_layer_call_and_return_conditional_losses_62847
G__inference_sequential_4_layer_call_and_return_conditional_losses_62801
G__inference_sequential_4_layer_call_and_return_conditional_losses_62935└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ж2Т
 __inference__wrapped_model_62424┴
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *1б.
,і)
lambda_4_input         
џ2Ќ
(__inference_lambda_4_layer_call_fn_63044
(__inference_lambda_4_layer_call_fn_63049└
и▓│
FullArgSpec1
args)џ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsџ

 
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
л2═
C__inference_lambda_4_layer_call_and_return_conditional_losses_63039
C__inference_lambda_4_layer_call_and_return_conditional_losses_63031└
и▓│
FullArgSpec1
args)џ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsџ

 
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_flatten_3_layer_call_fn_63060б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_flatten_3_layer_call_and_return_conditional_losses_63055б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_dense_12_layer_call_fn_63080б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_12_layer_call_and_return_conditional_losses_63071б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_dense_13_layer_call_fn_63100б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_13_layer_call_and_return_conditional_losses_63091б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_dense_14_layer_call_fn_63120б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_14_layer_call_and_return_conditional_losses_63111б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_dense_15_layer_call_fn_63139б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_15_layer_call_and_return_conditional_losses_63130б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_reshape_4_layer_call_fn_63157б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_reshape_4_layer_call_and_return_conditional_losses_63152б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЛB╬
#__inference_signature_wrapper_62755lambda_4_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 Д
 __inference__wrapped_model_62424ѓ"#();б8
1б.
,і)
lambda_4_input         
ф "9ф6
4
	reshape_4'і$
	reshape_4         ц
C__inference_dense_12_layer_call_and_return_conditional_losses_63071]/б,
%б"
 і
inputs         
ф "&б#
і
0         ђ
џ |
(__inference_dense_12_layer_call_fn_63080P/б,
%б"
 і
inputs         
ф "і         ђЦ
C__inference_dense_13_layer_call_and_return_conditional_losses_63091^0б-
&б#
!і
inputs         ђ
ф "&б#
і
0         ђ
џ }
(__inference_dense_13_layer_call_fn_63100Q0б-
&б#
!і
inputs         ђ
ф "і         ђц
C__inference_dense_14_layer_call_and_return_conditional_losses_63111]"#0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         @
џ |
(__inference_dense_14_layer_call_fn_63120P"#0б-
&б#
!і
inputs         ђ
ф "і         @Б
C__inference_dense_15_layer_call_and_return_conditional_losses_63130\()/б,
%б"
 і
inputs         @
ф "%б"
і
0         
џ {
(__inference_dense_15_layer_call_fn_63139O()/б,
%б"
 і
inputs         @
ф "і         ц
D__inference_flatten_3_layer_call_and_return_conditional_losses_63055\3б0
)б&
$і!
inputs         
ф "%б"
і
0         
џ |
)__inference_flatten_3_layer_call_fn_63060O3б0
)б&
$і!
inputs         
ф "і         »
C__inference_lambda_4_layer_call_and_return_conditional_losses_63031h;б8
1б.
$і!
inputs         

 
p
ф ")б&
і
0         
џ »
C__inference_lambda_4_layer_call_and_return_conditional_losses_63039h;б8
1б.
$і!
inputs         

 
p 
ф ")б&
і
0         
џ Є
(__inference_lambda_4_layer_call_fn_63044[;б8
1б.
$і!
inputs         

 
p
ф "і         Є
(__inference_lambda_4_layer_call_fn_63049[;б8
1б.
$і!
inputs         

 
p 
ф "і         ц
D__inference_reshape_4_layer_call_and_return_conditional_losses_63152\/б,
%б"
 і
inputs         
ф ")б&
і
0         
џ |
)__inference_reshape_4_layer_call_fn_63157O/б,
%б"
 і
inputs         
ф "і         ┼
G__inference_sequential_4_layer_call_and_return_conditional_losses_62801z"#()Cб@
9б6
,і)
lambda_4_input         
p

 
ф ")б&
і
0         
џ ┼
G__inference_sequential_4_layer_call_and_return_conditional_losses_62847z"#()Cб@
9б6
,і)
lambda_4_input         
p 

 
ф ")б&
і
0         
џ й
G__inference_sequential_4_layer_call_and_return_conditional_losses_62935r"#();б8
1б.
$і!
inputs         
p

 
ф ")б&
і
0         
џ й
G__inference_sequential_4_layer_call_and_return_conditional_losses_62981r"#();б8
1б.
$і!
inputs         
p 

 
ф ")б&
і
0         
џ Ю
,__inference_sequential_4_layer_call_fn_62868m"#()Cб@
9б6
,і)
lambda_4_input         
p

 
ф "і         Ю
,__inference_sequential_4_layer_call_fn_62889m"#()Cб@
9б6
,і)
lambda_4_input         
p 

 
ф "і         Ћ
,__inference_sequential_4_layer_call_fn_63002e"#();б8
1б.
$і!
inputs         
p

 
ф "і         Ћ
,__inference_sequential_4_layer_call_fn_63023e"#();б8
1б.
$і!
inputs         
p 

 
ф "і         ╝
#__inference_signature_wrapper_62755ћ"#()MбJ
б 
Cф@
>
lambda_4_input,і)
lambda_4_input         "9ф6
4
	reshape_4'і$
	reshape_4         
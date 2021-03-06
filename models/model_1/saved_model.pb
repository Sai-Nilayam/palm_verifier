??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
?
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
0
Sigmoid
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
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
executor_typestring ?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
?
conv_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameconv_layer_1/kernel
?
'conv_layer_1/kernel/Read/ReadVariableOpReadVariableOpconv_layer_1/kernel*&
_output_shapes
:*
dtype0
z
conv_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv_layer_1/bias
s
%conv_layer_1/bias/Read/ReadVariableOpReadVariableOpconv_layer_1/bias*
_output_shapes
:*
dtype0
?
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_1/gamma
?
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_1/beta
?
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:*
dtype0
?
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_1/moving_mean
?
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
?
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_1/moving_variance
?
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
?
dense_layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*%
shared_namedense_layer_3/kernel
?
(dense_layer_3/kernel/Read/ReadVariableOpReadVariableOpdense_layer_3/kernel*!
_output_shapes
:???*
dtype0
}
dense_layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_namedense_layer_3/bias
v
&dense_layer_3/bias/Read/ReadVariableOpReadVariableOpdense_layer_3/bias*
_output_shapes	
:?*
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
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/conv_layer_1/kernel/m
?
.Adam/conv_layer_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_1/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv_layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv_layer_1/bias/m
?
,Adam/conv_layer_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_1/bias/m*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_1/gamma/m
?
6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes
:*
dtype0
?
!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_1/beta/m
?
5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_layer_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/dense_layer_3/kernel/m
?
/Adam/dense_layer_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer_3/kernel/m*!
_output_shapes
:???*
dtype0
?
Adam/dense_layer_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/dense_layer_3/bias/m
?
-Adam/dense_layer_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer_3/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv_layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/conv_layer_1/kernel/v
?
.Adam/conv_layer_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_1/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv_layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv_layer_1/bias/v
?
,Adam/conv_layer_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_1/bias/v*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_1/gamma/v
?
6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes
:*
dtype0
?
!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_1/beta/v
?
5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes
:*
dtype0
?
Adam/dense_layer_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/dense_layer_3/kernel/v
?
/Adam/dense_layer_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer_3/kernel/v*!
_output_shapes
:???*
dtype0
?
Adam/dense_layer_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/dense_layer_3/bias/v
?
-Adam/dense_layer_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer_3/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?=
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?=
value?=B?= B?=
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
%
#_self_saveable_object_factories
%
#_self_saveable_object_factories
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
w
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?

kernel
 bias
#!_self_saveable_object_factories
"	variables
#trainable_variables
$regularization_losses
%	keras_api
?
&iter

'beta_1

(beta_2
	)decay
*learning_ratem? m?+m?,m?-m?.m?1m?2m?v? v?+v?,v?-v?.v?1v?2v?
 
 
F
+0
,1
-2
.3
/4
05
16
27
8
 9
8
+0
,1
-2
.3
14
25
6
 7
 
?
3metrics
		variables
4layer_metrics

5layers

trainable_variables
6layer_regularization_losses
7non_trainable_variables
regularization_losses
 
 
%
#8_self_saveable_object_factories
?

+kernel
,bias
#9_self_saveable_object_factories
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?
>axis
	-gamma
.beta
/moving_mean
0moving_variance
#?_self_saveable_object_factories
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
w
#D_self_saveable_object_factories
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
w
#I_self_saveable_object_factories
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
?

1kernel
2bias
#N_self_saveable_object_factories
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
 
8
+0
,1
-2
.3
/4
05
16
27
*
+0
,1
-2
.3
14
25
 
?
Smetrics
	variables
Tlayer_metrics

Ulayers
trainable_variables
Vlayer_regularization_losses
Wnon_trainable_variables
regularization_losses
 
 
 
 
?
Xmetrics
	variables
trainable_variables
Ylayer_metrics

Zlayers
[layer_regularization_losses
\non_trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
 1

0
 1
 
?
]metrics
"	variables
#trainable_variables
^layer_metrics

_layers
`layer_regularization_losses
anon_trainable_variables
$regularization_losses
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
OM
VARIABLE_VALUEconv_layer_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv_layer_1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_1/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEbatch_normalization_1/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!batch_normalization_1/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%batch_normalization_1/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdense_layer_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEdense_layer_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE

b0
c1
 
#
0
1
2
3
4
 

/0
01
 
 

+0
,1

+0
,1
 
?
dmetrics
:	variables
;trainable_variables
elayer_metrics

flayers
glayer_regularization_losses
hnon_trainable_variables
<regularization_losses
 
 

-0
.1
/2
03

-0
.1
 
?
imetrics
@	variables
Atrainable_variables
jlayer_metrics

klayers
llayer_regularization_losses
mnon_trainable_variables
Bregularization_losses
 
 
 
 
?
nmetrics
E	variables
Ftrainable_variables
olayer_metrics

players
qlayer_regularization_losses
rnon_trainable_variables
Gregularization_losses
 
 
 
 
?
smetrics
J	variables
Ktrainable_variables
tlayer_metrics

ulayers
vlayer_regularization_losses
wnon_trainable_variables
Lregularization_losses
 

10
21

10
21
 
?
xmetrics
O	variables
Ptrainable_variables
ylayer_metrics

zlayers
{layer_regularization_losses
|non_trainable_variables
Qregularization_losses
 
 
*
0
1
2
3
4
5
 

/0
01
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
5
	}total
	~count
	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 

/0
01
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

}0
~1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/conv_layer_1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv_layer_1/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/batch_normalization_1/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dense_layer_3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/dense_layer_3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/conv_layer_1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv_layer_1/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/batch_normalization_1/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dense_layer_3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/dense_layer_3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
%serving_default_input_layer_for_img_1Placeholder*0
_output_shapes
:??????????@*
dtype0*%
shape:??????????@
?
%serving_default_input_layer_for_img_2Placeholder*0
_output_shapes
:??????????@*
dtype0*%
shape:??????????@
?
StatefulPartitionedCallStatefulPartitionedCall%serving_default_input_layer_for_img_1%serving_default_input_layer_for_img_2conv_layer_1/kernelconv_layer_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense_layer_3/kerneldense_layer_3/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_38165
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'conv_layer_1/kernel/Read/ReadVariableOp%conv_layer_1/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp(dense_layer_3/kernel/Read/ReadVariableOp&dense_layer_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp.Adam/conv_layer_1/kernel/m/Read/ReadVariableOp,Adam/conv_layer_1/bias/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp/Adam/dense_layer_3/kernel/m/Read/ReadVariableOp-Adam/dense_layer_3/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp.Adam/conv_layer_1/kernel/v/Read/ReadVariableOp,Adam/conv_layer_1/bias/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp/Adam/dense_layer_3/kernel/v/Read/ReadVariableOp-Adam/dense_layer_3/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%	*
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
__inference__traced_save_38843
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv_layer_1/kernelconv_layer_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense_layer_3/kerneldense_layer_3/biastotalcounttotal_1count_1Adam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv_layer_1/kernel/mAdam/conv_layer_1/bias/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/dense_layer_3/kernel/mAdam/dense_layer_3/bias/mAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/conv_layer_1/kernel/vAdam/conv_layer_1/bias/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/dense_layer_3/kernel/vAdam/dense_layer_3/bias/v*/
Tin(
&2$*
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
!__inference__traced_restore_38958??

?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38645

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
n
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_37495

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
AvgPool?
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_model_3_layer_call_fn_37910
input_layer_for_img_1
input_layer_for_img_2!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:???
	unknown_6:	?
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layer_for_img_1input_layer_for_img_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_378872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_1:gc
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_2
??
?
B__inference_model_3_layer_call_and_return_conditional_losses_38357
inputs_0
inputs_1M
3model_2_conv_layer_1_conv2d_readvariableop_resource:B
4model_2_conv_layer_1_biasadd_readvariableop_resource:C
5model_2_batch_normalization_1_readvariableop_resource:E
7model_2_batch_normalization_1_readvariableop_1_resource:T
Fmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:V
Hmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:I
4model_2_dense_layer_3_matmul_readvariableop_resource:???D
5model_2_dense_layer_3_biasadd_readvariableop_resource:	?8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?,model_2/batch_normalization_1/AssignNewValue?.model_2/batch_normalization_1/AssignNewValue_1?.model_2/batch_normalization_1/AssignNewValue_2?.model_2/batch_normalization_1/AssignNewValue_3?=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp??model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1??model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?,model_2/batch_normalization_1/ReadVariableOp?.model_2/batch_normalization_1/ReadVariableOp_1?.model_2/batch_normalization_1/ReadVariableOp_2?.model_2/batch_normalization_1/ReadVariableOp_3?+model_2/conv_layer_1/BiasAdd/ReadVariableOp?-model_2/conv_layer_1/BiasAdd_1/ReadVariableOp?*model_2/conv_layer_1/Conv2D/ReadVariableOp?,model_2/conv_layer_1/Conv2D_1/ReadVariableOp?,model_2/dense_layer_3/BiasAdd/ReadVariableOp?.model_2/dense_layer_3/BiasAdd_1/ReadVariableOp?+model_2/dense_layer_3/MatMul/ReadVariableOp?-model_2/dense_layer_3/MatMul_1/ReadVariableOp?
*model_2/conv_layer_1/Conv2D/ReadVariableOpReadVariableOp3model_2_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_2/conv_layer_1/Conv2D/ReadVariableOp?
model_2/conv_layer_1/Conv2DConv2Dinputs_02model_2/conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2
model_2/conv_layer_1/Conv2D?
+model_2/conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp4model_2_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_2/conv_layer_1/BiasAdd/ReadVariableOp?
model_2/conv_layer_1/BiasAddBiasAdd$model_2/conv_layer_1/Conv2D:output:03model_2/conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2
model_2/conv_layer_1/BiasAdd?
model_2/conv_layer_1/SigmoidSigmoid%model_2/conv_layer_1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????@2
model_2/conv_layer_1/Sigmoid?
,model_2/batch_normalization_1/ReadVariableOpReadVariableOp5model_2_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_2/batch_normalization_1/ReadVariableOp?
.model_2/batch_normalization_1/ReadVariableOp_1ReadVariableOp7model_2_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype020
.model_2/batch_normalization_1/ReadVariableOp_1?
=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02?
=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02A
?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
.model_2/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3 model_2/conv_layer_1/Sigmoid:y:04model_2/batch_normalization_1/ReadVariableOp:value:06model_2/batch_normalization_1/ReadVariableOp_1:value:0Emodel_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Gmodel_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<20
.model_2/batch_normalization_1/FusedBatchNormV3?
,model_2/batch_normalization_1/AssignNewValueAssignVariableOpFmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource;model_2/batch_normalization_1/FusedBatchNormV3:batch_mean:0>^model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02.
,model_2/batch_normalization_1/AssignNewValue?
.model_2/batch_normalization_1/AssignNewValue_1AssignVariableOpHmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource?model_2/batch_normalization_1/FusedBatchNormV3:batch_variance:0@^model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype020
.model_2/batch_normalization_1/AssignNewValue_1?
'model_2/average_pooling_layer_1/AvgPoolAvgPool2model_2/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
2)
'model_2/average_pooling_layer_1/AvgPool?
model_2/flatten_layer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
model_2/flatten_layer_1/Const?
model_2/flatten_layer_1/ReshapeReshape0model_2/average_pooling_layer_1/AvgPool:output:0&model_2/flatten_layer_1/Const:output:0*
T0*)
_output_shapes
:???????????2!
model_2/flatten_layer_1/Reshape?
+model_2/dense_layer_3/MatMul/ReadVariableOpReadVariableOp4model_2_dense_layer_3_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02-
+model_2/dense_layer_3/MatMul/ReadVariableOp?
model_2/dense_layer_3/MatMulMatMul(model_2/flatten_layer_1/Reshape:output:03model_2/dense_layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_layer_3/MatMul?
,model_2/dense_layer_3/BiasAdd/ReadVariableOpReadVariableOp5model_2_dense_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,model_2/dense_layer_3/BiasAdd/ReadVariableOp?
model_2/dense_layer_3/BiasAddBiasAdd&model_2/dense_layer_3/MatMul:product:04model_2/dense_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_layer_3/BiasAdd?
model_2/dense_layer_3/SigmoidSigmoid&model_2/dense_layer_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_2/dense_layer_3/Sigmoid?
,model_2/conv_layer_1/Conv2D_1/ReadVariableOpReadVariableOp3model_2_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02.
,model_2/conv_layer_1/Conv2D_1/ReadVariableOp?
model_2/conv_layer_1/Conv2D_1Conv2Dinputs_14model_2/conv_layer_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2
model_2/conv_layer_1/Conv2D_1?
-model_2/conv_layer_1/BiasAdd_1/ReadVariableOpReadVariableOp4model_2_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model_2/conv_layer_1/BiasAdd_1/ReadVariableOp?
model_2/conv_layer_1/BiasAdd_1BiasAdd&model_2/conv_layer_1/Conv2D_1:output:05model_2/conv_layer_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2 
model_2/conv_layer_1/BiasAdd_1?
model_2/conv_layer_1/Sigmoid_1Sigmoid'model_2/conv_layer_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????@2 
model_2/conv_layer_1/Sigmoid_1?
.model_2/batch_normalization_1/ReadVariableOp_2ReadVariableOp5model_2_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model_2/batch_normalization_1/ReadVariableOp_2?
.model_2/batch_normalization_1/ReadVariableOp_3ReadVariableOp7model_2_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype020
.model_2/batch_normalization_1/ReadVariableOp_3?
?model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource-^model_2/batch_normalization_1/AssignNewValue*
_output_shapes
:*
dtype02A
?model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?
Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource/^model_2/batch_normalization_1/AssignNewValue_1*
_output_shapes
:*
dtype02C
Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?
0model_2/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3"model_2/conv_layer_1/Sigmoid_1:y:06model_2/batch_normalization_1/ReadVariableOp_2:value:06model_2/batch_normalization_1/ReadVariableOp_3:value:0Gmodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Imodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<22
0model_2/batch_normalization_1/FusedBatchNormV3_1?
.model_2/batch_normalization_1/AssignNewValue_2AssignVariableOpFmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource=model_2/batch_normalization_1/FusedBatchNormV3_1:batch_mean:0-^model_2/batch_normalization_1/AssignNewValue@^model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype020
.model_2/batch_normalization_1/AssignNewValue_2?
.model_2/batch_normalization_1/AssignNewValue_3AssignVariableOpHmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceAmodel_2/batch_normalization_1/FusedBatchNormV3_1:batch_variance:0/^model_2/batch_normalization_1/AssignNewValue_1B^model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype020
.model_2/batch_normalization_1/AssignNewValue_3?
)model_2/average_pooling_layer_1/AvgPool_1AvgPool4model_2/batch_normalization_1/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
2+
)model_2/average_pooling_layer_1/AvgPool_1?
model_2/flatten_layer_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"???? @  2!
model_2/flatten_layer_1/Const_1?
!model_2/flatten_layer_1/Reshape_1Reshape2model_2/average_pooling_layer_1/AvgPool_1:output:0(model_2/flatten_layer_1/Const_1:output:0*
T0*)
_output_shapes
:???????????2#
!model_2/flatten_layer_1/Reshape_1?
-model_2/dense_layer_3/MatMul_1/ReadVariableOpReadVariableOp4model_2_dense_layer_3_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02/
-model_2/dense_layer_3/MatMul_1/ReadVariableOp?
model_2/dense_layer_3/MatMul_1MatMul*model_2/flatten_layer_1/Reshape_1:output:05model_2/dense_layer_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
model_2/dense_layer_3/MatMul_1?
.model_2/dense_layer_3/BiasAdd_1/ReadVariableOpReadVariableOp5model_2_dense_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.model_2/dense_layer_3/BiasAdd_1/ReadVariableOp?
model_2/dense_layer_3/BiasAdd_1BiasAdd(model_2/dense_layer_3/MatMul_1:product:06model_2/dense_layer_3/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
model_2/dense_layer_3/BiasAdd_1?
model_2/dense_layer_3/Sigmoid_1Sigmoid(model_2/dense_layer_3/BiasAdd_1:output:0*
T0*(
_output_shapes
:??????????2!
model_2/dense_layer_3/Sigmoid_1?
lambda_1/subSub!model_2/dense_layer_3/Sigmoid:y:0#model_2/dense_layer_3/Sigmoid_1:y:0*
T0*(
_output_shapes
:??????????2
lambda_1/subq
lambda_1/SquareSquarelambda_1/sub:z:0*
T0*(
_output_shapes
:??????????2
lambda_1/Square?
lambda_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2 
lambda_1/Sum/reduction_indices?
lambda_1/SumSumlambda_1/Square:y:0'lambda_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
lambda_1/Sum?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMullambda_1/Sum:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Sigmoidn
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?	
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp-^model_2/batch_normalization_1/AssignNewValue/^model_2/batch_normalization_1/AssignNewValue_1/^model_2/batch_normalization_1/AssignNewValue_2/^model_2/batch_normalization_1/AssignNewValue_3>^model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@^model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1@^model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpB^model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1-^model_2/batch_normalization_1/ReadVariableOp/^model_2/batch_normalization_1/ReadVariableOp_1/^model_2/batch_normalization_1/ReadVariableOp_2/^model_2/batch_normalization_1/ReadVariableOp_3,^model_2/conv_layer_1/BiasAdd/ReadVariableOp.^model_2/conv_layer_1/BiasAdd_1/ReadVariableOp+^model_2/conv_layer_1/Conv2D/ReadVariableOp-^model_2/conv_layer_1/Conv2D_1/ReadVariableOp-^model_2/dense_layer_3/BiasAdd/ReadVariableOp/^model_2/dense_layer_3/BiasAdd_1/ReadVariableOp,^model_2/dense_layer_3/MatMul/ReadVariableOp.^model_2/dense_layer_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2\
,model_2/batch_normalization_1/AssignNewValue,model_2/batch_normalization_1/AssignNewValue2`
.model_2/batch_normalization_1/AssignNewValue_1.model_2/batch_normalization_1/AssignNewValue_12`
.model_2/batch_normalization_1/AssignNewValue_2.model_2/batch_normalization_1/AssignNewValue_22`
.model_2/batch_normalization_1/AssignNewValue_3.model_2/batch_normalization_1/AssignNewValue_32~
=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12?
?model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2?
Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12\
,model_2/batch_normalization_1/ReadVariableOp,model_2/batch_normalization_1/ReadVariableOp2`
.model_2/batch_normalization_1/ReadVariableOp_1.model_2/batch_normalization_1/ReadVariableOp_12`
.model_2/batch_normalization_1/ReadVariableOp_2.model_2/batch_normalization_1/ReadVariableOp_22`
.model_2/batch_normalization_1/ReadVariableOp_3.model_2/batch_normalization_1/ReadVariableOp_32Z
+model_2/conv_layer_1/BiasAdd/ReadVariableOp+model_2/conv_layer_1/BiasAdd/ReadVariableOp2^
-model_2/conv_layer_1/BiasAdd_1/ReadVariableOp-model_2/conv_layer_1/BiasAdd_1/ReadVariableOp2X
*model_2/conv_layer_1/Conv2D/ReadVariableOp*model_2/conv_layer_1/Conv2D/ReadVariableOp2\
,model_2/conv_layer_1/Conv2D_1/ReadVariableOp,model_2/conv_layer_1/Conv2D_1/ReadVariableOp2\
,model_2/dense_layer_3/BiasAdd/ReadVariableOp,model_2/dense_layer_3/BiasAdd/ReadVariableOp2`
.model_2/dense_layer_3/BiasAdd_1/ReadVariableOp.model_2/dense_layer_3/BiasAdd_1/ReadVariableOp2Z
+model_2/dense_layer_3/MatMul/ReadVariableOp+model_2/dense_layer_3/MatMul/ReadVariableOp2^
-model_2/dense_layer_3/MatMul_1/ReadVariableOp-model_2/dense_layer_3/MatMul_1/ReadVariableOp:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/1
?
S
7__inference_average_pooling_layer_1_layer_call_fn_38668

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_374952
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38663

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_model_2_layer_call_and_return_conditional_losses_37823
input_layer,
conv_layer_1_37801: 
conv_layer_1_37803:)
batch_normalization_1_37806:)
batch_normalization_1_37808:)
batch_normalization_1_37810:)
batch_normalization_1_37812:(
dense_layer_3_37817:???"
dense_layer_3_37819:	?
identity??-batch_normalization_1/StatefulPartitionedCall?$conv_layer_1/StatefulPartitionedCall?%dense_layer_3/StatefulPartitionedCall?
$conv_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv_layer_1_37801conv_layer_1_37803*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_375262&
$conv_layer_1/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-conv_layer_1/StatefulPartitionedCall:output:0batch_normalization_1_37806batch_normalization_1_37808batch_normalization_1_37810batch_normalization_1_37812*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_376642/
-batch_normalization_1/StatefulPartitionedCall?
'average_pooling_layer_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_375632)
'average_pooling_layer_1/PartitionedCall?
flatten_layer_1/PartitionedCallPartitionedCall0average_pooling_layer_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_flatten_layer_1_layer_call_and_return_conditional_losses_375712!
flatten_layer_1/PartitionedCall?
%dense_layer_3/StatefulPartitionedCallStatefulPartitionedCall(flatten_layer_1/PartitionedCall:output:0dense_layer_3_37817dense_layer_3_37819*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer_3_layer_call_and_return_conditional_losses_375842'
%dense_layer_3/StatefulPartitionedCall?
IdentityIdentity.dense_layer_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall%^conv_layer_1/StatefulPartitionedCall&^dense_layer_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2L
$conv_layer_1/StatefulPartitionedCall$conv_layer_1/StatefulPartitionedCall2N
%dense_layer_3/StatefulPartitionedCall%dense_layer_3/StatefulPartitionedCall:] Y
0
_output_shapes
:??????????@
%
_user_specified_nameinput_layer
?

?
'__inference_model_2_layer_call_fn_38378

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:???
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_375912
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_model_3_layer_call_and_return_conditional_losses_38008

inputs
inputs_1'
model_2_37975:
model_2_37977:
model_2_37979:
model_2_37981:
model_2_37983:
model_2_37985:"
model_2_37987:???
model_2_37989:	?
dense_1_38002:
dense_1_38004:
identity??dense_1/StatefulPartitionedCall?model_2/StatefulPartitionedCall?!model_2/StatefulPartitionedCall_1?
model_2/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_2_37975model_2_37977model_2_37979model_2_37981model_2_37983model_2_37985model_2_37987model_2_37989*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_377332!
model_2/StatefulPartitionedCall?
!model_2/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_2_37975model_2_37977model_2_37979model_2_37981model_2_37983model_2_37985model_2_37987model_2_37989 ^model_2/StatefulPartitionedCall*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_377332#
!model_2/StatefulPartitionedCall_1?
lambda_1/PartitionedCallPartitionedCall(model_2/StatefulPartitionedCall:output:0*model_2/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_379392
lambda_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0dense_1_38002dense_1_38004*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_378802!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_1/StatefulPartitionedCall ^model_2/StatefulPartitionedCall"^model_2/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall2F
!model_2/StatefulPartitionedCall_1!model_2/StatefulPartitionedCall_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_37526

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2	
BiasAddj
SigmoidSigmoidBiasAdd:output:0*
T0*0
_output_shapes
:??????????@2	
Sigmoido
IdentityIdentitySigmoid:y:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_dense_1_layer_call_and_return_conditional_losses_37880

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38609

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
n
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_38678

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
AvgPool?
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_model_3_layer_call_fn_38057
input_layer_for_img_1
input_layer_for_img_2!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:???
	unknown_6:	?
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layer_for_img_1input_layer_for_img_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_380082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_1:gc
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_2
??
?
 __inference__wrapped_model_37360
input_layer_for_img_1
input_layer_for_img_2U
;model_3_model_2_conv_layer_1_conv2d_readvariableop_resource:J
<model_3_model_2_conv_layer_1_biasadd_readvariableop_resource:K
=model_3_model_2_batch_normalization_1_readvariableop_resource:M
?model_3_model_2_batch_normalization_1_readvariableop_1_resource:\
Nmodel_3_model_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:^
Pmodel_3_model_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:Q
<model_3_model_2_dense_layer_3_matmul_readvariableop_resource:???L
=model_3_model_2_dense_layer_3_biasadd_readvariableop_resource:	?@
.model_3_dense_1_matmul_readvariableop_resource:=
/model_3_dense_1_biasadd_readvariableop_resource:
identity??&model_3/dense_1/BiasAdd/ReadVariableOp?%model_3/dense_1/MatMul/ReadVariableOp?Emodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?Gmodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?Gmodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?Imodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?4model_3/model_2/batch_normalization_1/ReadVariableOp?6model_3/model_2/batch_normalization_1/ReadVariableOp_1?6model_3/model_2/batch_normalization_1/ReadVariableOp_2?6model_3/model_2/batch_normalization_1/ReadVariableOp_3?3model_3/model_2/conv_layer_1/BiasAdd/ReadVariableOp?5model_3/model_2/conv_layer_1/BiasAdd_1/ReadVariableOp?2model_3/model_2/conv_layer_1/Conv2D/ReadVariableOp?4model_3/model_2/conv_layer_1/Conv2D_1/ReadVariableOp?4model_3/model_2/dense_layer_3/BiasAdd/ReadVariableOp?6model_3/model_2/dense_layer_3/BiasAdd_1/ReadVariableOp?3model_3/model_2/dense_layer_3/MatMul/ReadVariableOp?5model_3/model_2/dense_layer_3/MatMul_1/ReadVariableOp?
2model_3/model_2/conv_layer_1/Conv2D/ReadVariableOpReadVariableOp;model_3_model_2_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2model_3/model_2/conv_layer_1/Conv2D/ReadVariableOp?
#model_3/model_2/conv_layer_1/Conv2DConv2Dinput_layer_for_img_1:model_3/model_2/conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2%
#model_3/model_2/conv_layer_1/Conv2D?
3model_3/model_2/conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp<model_3_model_2_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3model_3/model_2/conv_layer_1/BiasAdd/ReadVariableOp?
$model_3/model_2/conv_layer_1/BiasAddBiasAdd,model_3/model_2/conv_layer_1/Conv2D:output:0;model_3/model_2/conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2&
$model_3/model_2/conv_layer_1/BiasAdd?
$model_3/model_2/conv_layer_1/SigmoidSigmoid-model_3/model_2/conv_layer_1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????@2&
$model_3/model_2/conv_layer_1/Sigmoid?
4model_3/model_2/batch_normalization_1/ReadVariableOpReadVariableOp=model_3_model_2_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype026
4model_3/model_2/batch_normalization_1/ReadVariableOp?
6model_3/model_2/batch_normalization_1/ReadVariableOp_1ReadVariableOp?model_3_model_2_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype028
6model_3/model_2/batch_normalization_1/ReadVariableOp_1?
Emodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpNmodel_3_model_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02G
Emodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
Gmodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPmodel_3_model_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02I
Gmodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
6model_3/model_2/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3(model_3/model_2/conv_layer_1/Sigmoid:y:0<model_3/model_2/batch_normalization_1/ReadVariableOp:value:0>model_3/model_2/batch_normalization_1/ReadVariableOp_1:value:0Mmodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Omodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
is_training( 28
6model_3/model_2/batch_normalization_1/FusedBatchNormV3?
/model_3/model_2/average_pooling_layer_1/AvgPoolAvgPool:model_3/model_2/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
21
/model_3/model_2/average_pooling_layer_1/AvgPool?
%model_3/model_2/flatten_layer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2'
%model_3/model_2/flatten_layer_1/Const?
'model_3/model_2/flatten_layer_1/ReshapeReshape8model_3/model_2/average_pooling_layer_1/AvgPool:output:0.model_3/model_2/flatten_layer_1/Const:output:0*
T0*)
_output_shapes
:???????????2)
'model_3/model_2/flatten_layer_1/Reshape?
3model_3/model_2/dense_layer_3/MatMul/ReadVariableOpReadVariableOp<model_3_model_2_dense_layer_3_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype025
3model_3/model_2/dense_layer_3/MatMul/ReadVariableOp?
$model_3/model_2/dense_layer_3/MatMulMatMul0model_3/model_2/flatten_layer_1/Reshape:output:0;model_3/model_2/dense_layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$model_3/model_2/dense_layer_3/MatMul?
4model_3/model_2/dense_layer_3/BiasAdd/ReadVariableOpReadVariableOp=model_3_model_2_dense_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_3/model_2/dense_layer_3/BiasAdd/ReadVariableOp?
%model_3/model_2/dense_layer_3/BiasAddBiasAdd.model_3/model_2/dense_layer_3/MatMul:product:0<model_3/model_2/dense_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_3/model_2/dense_layer_3/BiasAdd?
%model_3/model_2/dense_layer_3/SigmoidSigmoid.model_3/model_2/dense_layer_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2'
%model_3/model_2/dense_layer_3/Sigmoid?
4model_3/model_2/conv_layer_1/Conv2D_1/ReadVariableOpReadVariableOp;model_3_model_2_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4model_3/model_2/conv_layer_1/Conv2D_1/ReadVariableOp?
%model_3/model_2/conv_layer_1/Conv2D_1Conv2Dinput_layer_for_img_2<model_3/model_2/conv_layer_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2'
%model_3/model_2/conv_layer_1/Conv2D_1?
5model_3/model_2/conv_layer_1/BiasAdd_1/ReadVariableOpReadVariableOp<model_3_model_2_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5model_3/model_2/conv_layer_1/BiasAdd_1/ReadVariableOp?
&model_3/model_2/conv_layer_1/BiasAdd_1BiasAdd.model_3/model_2/conv_layer_1/Conv2D_1:output:0=model_3/model_2/conv_layer_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2(
&model_3/model_2/conv_layer_1/BiasAdd_1?
&model_3/model_2/conv_layer_1/Sigmoid_1Sigmoid/model_3/model_2/conv_layer_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????@2(
&model_3/model_2/conv_layer_1/Sigmoid_1?
6model_3/model_2/batch_normalization_1/ReadVariableOp_2ReadVariableOp=model_3_model_2_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype028
6model_3/model_2/batch_normalization_1/ReadVariableOp_2?
6model_3/model_2/batch_normalization_1/ReadVariableOp_3ReadVariableOp?model_3_model_2_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype028
6model_3/model_2/batch_normalization_1/ReadVariableOp_3?
Gmodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpNmodel_3_model_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02I
Gmodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?
Imodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpPmodel_3_model_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02K
Imodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?
8model_3/model_2/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3*model_3/model_2/conv_layer_1/Sigmoid_1:y:0>model_3/model_2/batch_normalization_1/ReadVariableOp_2:value:0>model_3/model_2/batch_normalization_1/ReadVariableOp_3:value:0Omodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Qmodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
is_training( 2:
8model_3/model_2/batch_normalization_1/FusedBatchNormV3_1?
1model_3/model_2/average_pooling_layer_1/AvgPool_1AvgPool<model_3/model_2/batch_normalization_1/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
23
1model_3/model_2/average_pooling_layer_1/AvgPool_1?
'model_3/model_2/flatten_layer_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"???? @  2)
'model_3/model_2/flatten_layer_1/Const_1?
)model_3/model_2/flatten_layer_1/Reshape_1Reshape:model_3/model_2/average_pooling_layer_1/AvgPool_1:output:00model_3/model_2/flatten_layer_1/Const_1:output:0*
T0*)
_output_shapes
:???????????2+
)model_3/model_2/flatten_layer_1/Reshape_1?
5model_3/model_2/dense_layer_3/MatMul_1/ReadVariableOpReadVariableOp<model_3_model_2_dense_layer_3_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype027
5model_3/model_2/dense_layer_3/MatMul_1/ReadVariableOp?
&model_3/model_2/dense_layer_3/MatMul_1MatMul2model_3/model_2/flatten_layer_1/Reshape_1:output:0=model_3/model_2/dense_layer_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&model_3/model_2/dense_layer_3/MatMul_1?
6model_3/model_2/dense_layer_3/BiasAdd_1/ReadVariableOpReadVariableOp=model_3_model_2_dense_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6model_3/model_2/dense_layer_3/BiasAdd_1/ReadVariableOp?
'model_3/model_2/dense_layer_3/BiasAdd_1BiasAdd0model_3/model_2/dense_layer_3/MatMul_1:product:0>model_3/model_2/dense_layer_3/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'model_3/model_2/dense_layer_3/BiasAdd_1?
'model_3/model_2/dense_layer_3/Sigmoid_1Sigmoid0model_3/model_2/dense_layer_3/BiasAdd_1:output:0*
T0*(
_output_shapes
:??????????2)
'model_3/model_2/dense_layer_3/Sigmoid_1?
model_3/lambda_1/subSub)model_3/model_2/dense_layer_3/Sigmoid:y:0+model_3/model_2/dense_layer_3/Sigmoid_1:y:0*
T0*(
_output_shapes
:??????????2
model_3/lambda_1/sub?
model_3/lambda_1/SquareSquaremodel_3/lambda_1/sub:z:0*
T0*(
_output_shapes
:??????????2
model_3/lambda_1/Square?
&model_3/lambda_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_3/lambda_1/Sum/reduction_indices?
model_3/lambda_1/SumSummodel_3/lambda_1/Square:y:0/model_3/lambda_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
model_3/lambda_1/Sum?
%model_3/dense_1/MatMul/ReadVariableOpReadVariableOp.model_3_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%model_3/dense_1/MatMul/ReadVariableOp?
model_3/dense_1/MatMulMatMulmodel_3/lambda_1/Sum:output:0-model_3/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_3/dense_1/MatMul?
&model_3/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_3/dense_1/BiasAdd/ReadVariableOp?
model_3/dense_1/BiasAddBiasAdd model_3/dense_1/MatMul:product:0.model_3/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_3/dense_1/BiasAdd?
model_3/dense_1/SigmoidSigmoid model_3/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_3/dense_1/Sigmoidv
IdentityIdentitymodel_3/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^model_3/dense_1/BiasAdd/ReadVariableOp&^model_3/dense_1/MatMul/ReadVariableOpF^model_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOpH^model_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1H^model_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpJ^model_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_15^model_3/model_2/batch_normalization_1/ReadVariableOp7^model_3/model_2/batch_normalization_1/ReadVariableOp_17^model_3/model_2/batch_normalization_1/ReadVariableOp_27^model_3/model_2/batch_normalization_1/ReadVariableOp_34^model_3/model_2/conv_layer_1/BiasAdd/ReadVariableOp6^model_3/model_2/conv_layer_1/BiasAdd_1/ReadVariableOp3^model_3/model_2/conv_layer_1/Conv2D/ReadVariableOp5^model_3/model_2/conv_layer_1/Conv2D_1/ReadVariableOp5^model_3/model_2/dense_layer_3/BiasAdd/ReadVariableOp7^model_3/model_2/dense_layer_3/BiasAdd_1/ReadVariableOp4^model_3/model_2/dense_layer_3/MatMul/ReadVariableOp6^model_3/model_2/dense_layer_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 2P
&model_3/dense_1/BiasAdd/ReadVariableOp&model_3/dense_1/BiasAdd/ReadVariableOp2N
%model_3/dense_1/MatMul/ReadVariableOp%model_3/dense_1/MatMul/ReadVariableOp2?
Emodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOpEmodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
Gmodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Gmodel_3/model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12?
Gmodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpGmodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2?
Imodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Imodel_3/model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12l
4model_3/model_2/batch_normalization_1/ReadVariableOp4model_3/model_2/batch_normalization_1/ReadVariableOp2p
6model_3/model_2/batch_normalization_1/ReadVariableOp_16model_3/model_2/batch_normalization_1/ReadVariableOp_12p
6model_3/model_2/batch_normalization_1/ReadVariableOp_26model_3/model_2/batch_normalization_1/ReadVariableOp_22p
6model_3/model_2/batch_normalization_1/ReadVariableOp_36model_3/model_2/batch_normalization_1/ReadVariableOp_32j
3model_3/model_2/conv_layer_1/BiasAdd/ReadVariableOp3model_3/model_2/conv_layer_1/BiasAdd/ReadVariableOp2n
5model_3/model_2/conv_layer_1/BiasAdd_1/ReadVariableOp5model_3/model_2/conv_layer_1/BiasAdd_1/ReadVariableOp2h
2model_3/model_2/conv_layer_1/Conv2D/ReadVariableOp2model_3/model_2/conv_layer_1/Conv2D/ReadVariableOp2l
4model_3/model_2/conv_layer_1/Conv2D_1/ReadVariableOp4model_3/model_2/conv_layer_1/Conv2D_1/ReadVariableOp2l
4model_3/model_2/dense_layer_3/BiasAdd/ReadVariableOp4model_3/model_2/dense_layer_3/BiasAdd/ReadVariableOp2p
6model_3/model_2/dense_layer_3/BiasAdd_1/ReadVariableOp6model_3/model_2/dense_layer_3/BiasAdd_1/ReadVariableOp2j
3model_3/model_2/dense_layer_3/MatMul/ReadVariableOp3model_3/model_2/dense_layer_3/MatMul/ReadVariableOp2n
5model_3/model_2/dense_layer_3/MatMul_1/ReadVariableOp5model_3/model_2/dense_layer_3/MatMul_1/ReadVariableOp:g c
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_1:gc
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_2
?
?
B__inference_model_3_layer_call_and_return_conditional_losses_38094
input_layer_for_img_1
input_layer_for_img_2'
model_2_38061:
model_2_38063:
model_2_38065:
model_2_38067:
model_2_38069:
model_2_38071:"
model_2_38073:???
model_2_38075:	?
dense_1_38088:
dense_1_38090:
identity??dense_1/StatefulPartitionedCall?model_2/StatefulPartitionedCall?!model_2/StatefulPartitionedCall_1?
model_2/StatefulPartitionedCallStatefulPartitionedCallinput_layer_for_img_1model_2_38061model_2_38063model_2_38065model_2_38067model_2_38069model_2_38071model_2_38073model_2_38075*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_375912!
model_2/StatefulPartitionedCall?
!model_2/StatefulPartitionedCall_1StatefulPartitionedCallinput_layer_for_img_2model_2_38061model_2_38063model_2_38065model_2_38067model_2_38069model_2_38071model_2_38073model_2_38075*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_375912#
!model_2/StatefulPartitionedCall_1?
lambda_1/PartitionedCallPartitionedCall(model_2/StatefulPartitionedCall:output:0*model_2/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_378672
lambda_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0dense_1_38088dense_1_38090*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_378802!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_1/StatefulPartitionedCall ^model_2/StatefulPartitionedCall"^model_2/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall2F
!model_2/StatefulPartitionedCall_1!model_2/StatefulPartitionedCall_1:g c
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_1:gc
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_2
?
n
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_37563

inputs
identity?
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
2	
AvgPooll
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:?????????@ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_model_2_layer_call_and_return_conditional_losses_37733

inputs,
conv_layer_1_37711: 
conv_layer_1_37713:)
batch_normalization_1_37716:)
batch_normalization_1_37718:)
batch_normalization_1_37720:)
batch_normalization_1_37722:(
dense_layer_3_37727:???"
dense_layer_3_37729:	?
identity??-batch_normalization_1/StatefulPartitionedCall?$conv_layer_1/StatefulPartitionedCall?%dense_layer_3/StatefulPartitionedCall?
$conv_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer_1_37711conv_layer_1_37713*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_375262&
$conv_layer_1/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-conv_layer_1/StatefulPartitionedCall:output:0batch_normalization_1_37716batch_normalization_1_37718batch_normalization_1_37720batch_normalization_1_37722*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_376642/
-batch_normalization_1/StatefulPartitionedCall?
'average_pooling_layer_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_375632)
'average_pooling_layer_1/PartitionedCall?
flatten_layer_1/PartitionedCallPartitionedCall0average_pooling_layer_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_flatten_layer_1_layer_call_and_return_conditional_losses_375712!
flatten_layer_1/PartitionedCall?
%dense_layer_3/StatefulPartitionedCallStatefulPartitionedCall(flatten_layer_1/PartitionedCall:output:0dense_layer_3_37727dense_layer_3_37729*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer_3_layer_call_and_return_conditional_losses_375842'
%dense_layer_3/StatefulPartitionedCall?
IdentityIdentity.dense_layer_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall%^conv_layer_1/StatefulPartitionedCall&^dense_layer_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2L
$conv_layer_1/StatefulPartitionedCall$conv_layer_1/StatefulPartitionedCall2N
%dense_layer_3/StatefulPartitionedCall%dense_layer_3/StatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_model_3_layer_call_and_return_conditional_losses_37887

inputs
inputs_1'
model_2_37832:
model_2_37834:
model_2_37836:
model_2_37838:
model_2_37840:
model_2_37842:"
model_2_37844:???
model_2_37846:	?
dense_1_37881:
dense_1_37883:
identity??dense_1/StatefulPartitionedCall?model_2/StatefulPartitionedCall?!model_2/StatefulPartitionedCall_1?
model_2/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_2_37832model_2_37834model_2_37836model_2_37838model_2_37840model_2_37842model_2_37844model_2_37846*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_375912!
model_2/StatefulPartitionedCall?
!model_2/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_2_37832model_2_37834model_2_37836model_2_37838model_2_37840model_2_37842model_2_37844model_2_37846*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_375912#
!model_2/StatefulPartitionedCall_1?
lambda_1/PartitionedCallPartitionedCall(model_2/StatefulPartitionedCall:output:0*model_2/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_378672
lambda_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0dense_1_37881dense_1_37883*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_378802!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_1/StatefulPartitionedCall ^model_2/StatefulPartitionedCall"^model_2/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall2F
!model_2/StatefulPartitionedCall_1!model_2/StatefulPartitionedCall_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37664

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?0
?
B__inference_model_2_layer_call_and_return_conditional_losses_38434

inputsE
+conv_layer_1_conv2d_readvariableop_resource::
,conv_layer_1_biasadd_readvariableop_resource:;
-batch_normalization_1_readvariableop_resource:=
/batch_normalization_1_readvariableop_1_resource:L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:A
,dense_layer_3_matmul_readvariableop_resource:???<
-dense_layer_3_biasadd_readvariableop_resource:	?
identity??5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?#conv_layer_1/BiasAdd/ReadVariableOp?"conv_layer_1/Conv2D/ReadVariableOp?$dense_layer_3/BiasAdd/ReadVariableOp?#dense_layer_3/MatMul/ReadVariableOp?
"conv_layer_1/Conv2D/ReadVariableOpReadVariableOp+conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02$
"conv_layer_1/Conv2D/ReadVariableOp?
conv_layer_1/Conv2DConv2Dinputs*conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2
conv_layer_1/Conv2D?
#conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#conv_layer_1/BiasAdd/ReadVariableOp?
conv_layer_1/BiasAddBiasAddconv_layer_1/Conv2D:output:0+conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2
conv_layer_1/BiasAdd?
conv_layer_1/SigmoidSigmoidconv_layer_1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????@2
conv_layer_1/Sigmoid?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_1/ReadVariableOp?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_1/ReadVariableOp_1?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv_layer_1/Sigmoid:y:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3?
average_pooling_layer_1/AvgPoolAvgPool*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
2!
average_pooling_layer_1/AvgPool
flatten_layer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
flatten_layer_1/Const?
flatten_layer_1/ReshapeReshape(average_pooling_layer_1/AvgPool:output:0flatten_layer_1/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_layer_1/Reshape?
#dense_layer_3/MatMul/ReadVariableOpReadVariableOp,dense_layer_3_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02%
#dense_layer_3/MatMul/ReadVariableOp?
dense_layer_3/MatMulMatMul flatten_layer_1/Reshape:output:0+dense_layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_layer_3/MatMul?
$dense_layer_3/BiasAdd/ReadVariableOpReadVariableOp-dense_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$dense_layer_3/BiasAdd/ReadVariableOp?
dense_layer_3/BiasAddBiasAdddense_layer_3/MatMul:product:0,dense_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_layer_3/BiasAdd?
dense_layer_3/SigmoidSigmoiddense_layer_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_layer_3/Sigmoidu
IdentityIdentitydense_layer_3/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp6^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1$^conv_layer_1/BiasAdd/ReadVariableOp#^conv_layer_1/Conv2D/ReadVariableOp%^dense_layer_3/BiasAdd/ReadVariableOp$^dense_layer_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12J
#conv_layer_1/BiasAdd/ReadVariableOp#conv_layer_1/BiasAdd/ReadVariableOp2H
"conv_layer_1/Conv2D/ReadVariableOp"conv_layer_1/Conv2D/ReadVariableOp2L
$dense_layer_3/BiasAdd/ReadVariableOp$dense_layer_3/BiasAdd/ReadVariableOp2J
#dense_layer_3/MatMul/ReadVariableOp#dense_layer_3/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
T
(__inference_lambda_1_layer_call_fn_38475
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_378672
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
'__inference_dense_1_layer_call_fn_38508

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_378802
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
J__inference_flatten_layer_1_layer_call_and_return_conditional_losses_37571

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@ :W S
/
_output_shapes
:?????????@ 
 
_user_specified_nameinputs
?
m
C__inference_lambda_1_layer_call_and_return_conditional_losses_37939

inputs
inputs_1
identityV
subSubinputsinputs_1*
T0*(
_output_shapes
:??????????2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:??????????2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum`
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
S
7__inference_average_pooling_layer_1_layer_call_fn_38673

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_375632
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
T
(__inference_lambda_1_layer_call_fn_38481
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_379392
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
o
C__inference_lambda_1_layer_call_and_return_conditional_losses_38490
inputs_0
inputs_1
identityX
subSubinputs_0inputs_1*
T0*(
_output_shapes
:??????????2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:??????????2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum`
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?s
?
B__inference_model_3_layer_call_and_return_conditional_losses_38287
inputs_0
inputs_1M
3model_2_conv_layer_1_conv2d_readvariableop_resource:B
4model_2_conv_layer_1_biasadd_readvariableop_resource:C
5model_2_batch_normalization_1_readvariableop_resource:E
7model_2_batch_normalization_1_readvariableop_1_resource:T
Fmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:V
Hmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:I
4model_2_dense_layer_3_matmul_readvariableop_resource:???D
5model_2_dense_layer_3_biasadd_readvariableop_resource:	?8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp??model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1??model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?,model_2/batch_normalization_1/ReadVariableOp?.model_2/batch_normalization_1/ReadVariableOp_1?.model_2/batch_normalization_1/ReadVariableOp_2?.model_2/batch_normalization_1/ReadVariableOp_3?+model_2/conv_layer_1/BiasAdd/ReadVariableOp?-model_2/conv_layer_1/BiasAdd_1/ReadVariableOp?*model_2/conv_layer_1/Conv2D/ReadVariableOp?,model_2/conv_layer_1/Conv2D_1/ReadVariableOp?,model_2/dense_layer_3/BiasAdd/ReadVariableOp?.model_2/dense_layer_3/BiasAdd_1/ReadVariableOp?+model_2/dense_layer_3/MatMul/ReadVariableOp?-model_2/dense_layer_3/MatMul_1/ReadVariableOp?
*model_2/conv_layer_1/Conv2D/ReadVariableOpReadVariableOp3model_2_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_2/conv_layer_1/Conv2D/ReadVariableOp?
model_2/conv_layer_1/Conv2DConv2Dinputs_02model_2/conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2
model_2/conv_layer_1/Conv2D?
+model_2/conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp4model_2_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_2/conv_layer_1/BiasAdd/ReadVariableOp?
model_2/conv_layer_1/BiasAddBiasAdd$model_2/conv_layer_1/Conv2D:output:03model_2/conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2
model_2/conv_layer_1/BiasAdd?
model_2/conv_layer_1/SigmoidSigmoid%model_2/conv_layer_1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????@2
model_2/conv_layer_1/Sigmoid?
,model_2/batch_normalization_1/ReadVariableOpReadVariableOp5model_2_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_2/batch_normalization_1/ReadVariableOp?
.model_2/batch_normalization_1/ReadVariableOp_1ReadVariableOp7model_2_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype020
.model_2/batch_normalization_1/ReadVariableOp_1?
=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02?
=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02A
?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
.model_2/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3 model_2/conv_layer_1/Sigmoid:y:04model_2/batch_normalization_1/ReadVariableOp:value:06model_2/batch_normalization_1/ReadVariableOp_1:value:0Emodel_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Gmodel_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
is_training( 20
.model_2/batch_normalization_1/FusedBatchNormV3?
'model_2/average_pooling_layer_1/AvgPoolAvgPool2model_2/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
2)
'model_2/average_pooling_layer_1/AvgPool?
model_2/flatten_layer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
model_2/flatten_layer_1/Const?
model_2/flatten_layer_1/ReshapeReshape0model_2/average_pooling_layer_1/AvgPool:output:0&model_2/flatten_layer_1/Const:output:0*
T0*)
_output_shapes
:???????????2!
model_2/flatten_layer_1/Reshape?
+model_2/dense_layer_3/MatMul/ReadVariableOpReadVariableOp4model_2_dense_layer_3_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02-
+model_2/dense_layer_3/MatMul/ReadVariableOp?
model_2/dense_layer_3/MatMulMatMul(model_2/flatten_layer_1/Reshape:output:03model_2/dense_layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_layer_3/MatMul?
,model_2/dense_layer_3/BiasAdd/ReadVariableOpReadVariableOp5model_2_dense_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,model_2/dense_layer_3/BiasAdd/ReadVariableOp?
model_2/dense_layer_3/BiasAddBiasAdd&model_2/dense_layer_3/MatMul:product:04model_2/dense_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_layer_3/BiasAdd?
model_2/dense_layer_3/SigmoidSigmoid&model_2/dense_layer_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_2/dense_layer_3/Sigmoid?
,model_2/conv_layer_1/Conv2D_1/ReadVariableOpReadVariableOp3model_2_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02.
,model_2/conv_layer_1/Conv2D_1/ReadVariableOp?
model_2/conv_layer_1/Conv2D_1Conv2Dinputs_14model_2/conv_layer_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2
model_2/conv_layer_1/Conv2D_1?
-model_2/conv_layer_1/BiasAdd_1/ReadVariableOpReadVariableOp4model_2_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model_2/conv_layer_1/BiasAdd_1/ReadVariableOp?
model_2/conv_layer_1/BiasAdd_1BiasAdd&model_2/conv_layer_1/Conv2D_1:output:05model_2/conv_layer_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2 
model_2/conv_layer_1/BiasAdd_1?
model_2/conv_layer_1/Sigmoid_1Sigmoid'model_2/conv_layer_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????@2 
model_2/conv_layer_1/Sigmoid_1?
.model_2/batch_normalization_1/ReadVariableOp_2ReadVariableOp5model_2_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model_2/batch_normalization_1/ReadVariableOp_2?
.model_2/batch_normalization_1/ReadVariableOp_3ReadVariableOp7model_2_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype020
.model_2/batch_normalization_1/ReadVariableOp_3?
?model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02A
?model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?
Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02C
Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?
0model_2/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3"model_2/conv_layer_1/Sigmoid_1:y:06model_2/batch_normalization_1/ReadVariableOp_2:value:06model_2/batch_normalization_1/ReadVariableOp_3:value:0Gmodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Imodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
is_training( 22
0model_2/batch_normalization_1/FusedBatchNormV3_1?
)model_2/average_pooling_layer_1/AvgPool_1AvgPool4model_2/batch_normalization_1/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
2+
)model_2/average_pooling_layer_1/AvgPool_1?
model_2/flatten_layer_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"???? @  2!
model_2/flatten_layer_1/Const_1?
!model_2/flatten_layer_1/Reshape_1Reshape2model_2/average_pooling_layer_1/AvgPool_1:output:0(model_2/flatten_layer_1/Const_1:output:0*
T0*)
_output_shapes
:???????????2#
!model_2/flatten_layer_1/Reshape_1?
-model_2/dense_layer_3/MatMul_1/ReadVariableOpReadVariableOp4model_2_dense_layer_3_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02/
-model_2/dense_layer_3/MatMul_1/ReadVariableOp?
model_2/dense_layer_3/MatMul_1MatMul*model_2/flatten_layer_1/Reshape_1:output:05model_2/dense_layer_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
model_2/dense_layer_3/MatMul_1?
.model_2/dense_layer_3/BiasAdd_1/ReadVariableOpReadVariableOp5model_2_dense_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.model_2/dense_layer_3/BiasAdd_1/ReadVariableOp?
model_2/dense_layer_3/BiasAdd_1BiasAdd(model_2/dense_layer_3/MatMul_1:product:06model_2/dense_layer_3/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
model_2/dense_layer_3/BiasAdd_1?
model_2/dense_layer_3/Sigmoid_1Sigmoid(model_2/dense_layer_3/BiasAdd_1:output:0*
T0*(
_output_shapes
:??????????2!
model_2/dense_layer_3/Sigmoid_1?
lambda_1/subSub!model_2/dense_layer_3/Sigmoid:y:0#model_2/dense_layer_3/Sigmoid_1:y:0*
T0*(
_output_shapes
:??????????2
lambda_1/subq
lambda_1/SquareSquarelambda_1/sub:z:0*
T0*(
_output_shapes
:??????????2
lambda_1/Square?
lambda_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2 
lambda_1/Sum/reduction_indices?
lambda_1/SumSumlambda_1/Square:y:0'lambda_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
lambda_1/Sum?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMullambda_1/Sum:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Sigmoidn
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp>^model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@^model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1@^model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpB^model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1-^model_2/batch_normalization_1/ReadVariableOp/^model_2/batch_normalization_1/ReadVariableOp_1/^model_2/batch_normalization_1/ReadVariableOp_2/^model_2/batch_normalization_1/ReadVariableOp_3,^model_2/conv_layer_1/BiasAdd/ReadVariableOp.^model_2/conv_layer_1/BiasAdd_1/ReadVariableOp+^model_2/conv_layer_1/Conv2D/ReadVariableOp-^model_2/conv_layer_1/Conv2D_1/ReadVariableOp-^model_2/dense_layer_3/BiasAdd/ReadVariableOp/^model_2/dense_layer_3/BiasAdd_1/ReadVariableOp,^model_2/dense_layer_3/MatMul/ReadVariableOp.^model_2/dense_layer_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2~
=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12?
?model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?model_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2?
Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Amodel_2/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12\
,model_2/batch_normalization_1/ReadVariableOp,model_2/batch_normalization_1/ReadVariableOp2`
.model_2/batch_normalization_1/ReadVariableOp_1.model_2/batch_normalization_1/ReadVariableOp_12`
.model_2/batch_normalization_1/ReadVariableOp_2.model_2/batch_normalization_1/ReadVariableOp_22`
.model_2/batch_normalization_1/ReadVariableOp_3.model_2/batch_normalization_1/ReadVariableOp_32Z
+model_2/conv_layer_1/BiasAdd/ReadVariableOp+model_2/conv_layer_1/BiasAdd/ReadVariableOp2^
-model_2/conv_layer_1/BiasAdd_1/ReadVariableOp-model_2/conv_layer_1/BiasAdd_1/ReadVariableOp2X
*model_2/conv_layer_1/Conv2D/ReadVariableOp*model_2/conv_layer_1/Conv2D/ReadVariableOp2\
,model_2/conv_layer_1/Conv2D_1/ReadVariableOp,model_2/conv_layer_1/Conv2D_1/ReadVariableOp2\
,model_2/dense_layer_3/BiasAdd/ReadVariableOp,model_2/dense_layer_3/BiasAdd/ReadVariableOp2`
.model_2/dense_layer_3/BiasAdd_1/ReadVariableOp.model_2/dense_layer_3/BiasAdd_1/ReadVariableOp2Z
+model_2/dense_layer_3/MatMul/ReadVariableOp+model_2/dense_layer_3/MatMul/ReadVariableOp2^
-model_2/dense_layer_3/MatMul_1/ReadVariableOp-model_2/dense_layer_3/MatMul_1/ReadVariableOp:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/1
?
?
5__inference_batch_normalization_1_layer_call_fn_38591

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_376642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
m
C__inference_lambda_1_layer_call_and_return_conditional_losses_37867

inputs
inputs_1
identityV
subSubinputsinputs_1*
T0*(
_output_shapes
:??????????2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:??????????2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum`
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37549

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_dense_1_layer_call_and_return_conditional_losses_38519

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_model_3_layer_call_fn_38191
inputs_0
inputs_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:???
	unknown_6:	?
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_378872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/1
?
?
#__inference_signature_wrapper_38165
input_layer_for_img_1
input_layer_for_img_2!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:???
	unknown_6:	?
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layer_for_img_1input_layer_for_img_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_373602
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_1:gc
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_2
?
?
H__inference_dense_layer_3_layer_call_and_return_conditional_losses_37584

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
'__inference_model_2_layer_call_fn_37773
input_layer!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:???
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_377332
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:??????????@
%
_user_specified_nameinput_layer
?
K
/__inference_flatten_layer_1_layer_call_fn_38688

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_flatten_layer_1_layer_call_and_return_conditional_losses_375712
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@ :W S
/
_output_shapes
:?????????@ 
 
_user_specified_nameinputs
?
?
H__inference_dense_layer_3_layer_call_and_return_conditional_losses_38714

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
'__inference_model_2_layer_call_fn_37610
input_layer!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:???
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_375912
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:??????????@
%
_user_specified_nameinput_layer
?
o
C__inference_lambda_1_layer_call_and_return_conditional_losses_38499
inputs_0
inputs_1
identityX
subSubinputs_0inputs_1*
T0*(
_output_shapes
:??????????2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:??????????2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum`
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
5__inference_batch_normalization_1_layer_call_fn_38578

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_375492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_model_2_layer_call_and_return_conditional_losses_37798
input_layer,
conv_layer_1_37776: 
conv_layer_1_37778:)
batch_normalization_1_37781:)
batch_normalization_1_37783:)
batch_normalization_1_37785:)
batch_normalization_1_37787:(
dense_layer_3_37792:???"
dense_layer_3_37794:	?
identity??-batch_normalization_1/StatefulPartitionedCall?$conv_layer_1/StatefulPartitionedCall?%dense_layer_3/StatefulPartitionedCall?
$conv_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv_layer_1_37776conv_layer_1_37778*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_375262&
$conv_layer_1/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-conv_layer_1/StatefulPartitionedCall:output:0batch_normalization_1_37781batch_normalization_1_37783batch_normalization_1_37785batch_normalization_1_37787*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_375492/
-batch_normalization_1/StatefulPartitionedCall?
'average_pooling_layer_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_375632)
'average_pooling_layer_1/PartitionedCall?
flatten_layer_1/PartitionedCallPartitionedCall0average_pooling_layer_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_flatten_layer_1_layer_call_and_return_conditional_losses_375712!
flatten_layer_1/PartitionedCall?
%dense_layer_3/StatefulPartitionedCallStatefulPartitionedCall(flatten_layer_1/PartitionedCall:output:0dense_layer_3_37792dense_layer_3_37794*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer_3_layer_call_and_return_conditional_losses_375842'
%dense_layer_3/StatefulPartitionedCall?
IdentityIdentity.dense_layer_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall%^conv_layer_1/StatefulPartitionedCall&^dense_layer_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2L
$conv_layer_1/StatefulPartitionedCall$conv_layer_1/StatefulPartitionedCall2N
%dense_layer_3/StatefulPartitionedCall%dense_layer_3/StatefulPartitionedCall:] Y
0
_output_shapes
:??????????@
%
_user_specified_nameinput_layer
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37426

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_1_layer_call_fn_38565

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_374262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38627

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_model_3_layer_call_fn_38217
inputs_0
inputs_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:???
	unknown_6:	?
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_380082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/1
?
?
,__inference_conv_layer_1_layer_call_fn_38528

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_375262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_model_3_layer_call_and_return_conditional_losses_38131
input_layer_for_img_1
input_layer_for_img_2'
model_2_38098:
model_2_38100:
model_2_38102:
model_2_38104:
model_2_38106:
model_2_38108:"
model_2_38110:???
model_2_38112:	?
dense_1_38125:
dense_1_38127:
identity??dense_1/StatefulPartitionedCall?model_2/StatefulPartitionedCall?!model_2/StatefulPartitionedCall_1?
model_2/StatefulPartitionedCallStatefulPartitionedCallinput_layer_for_img_1model_2_38098model_2_38100model_2_38102model_2_38104model_2_38106model_2_38108model_2_38110model_2_38112*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_377332!
model_2/StatefulPartitionedCall?
!model_2/StatefulPartitionedCall_1StatefulPartitionedCallinput_layer_for_img_2model_2_38098model_2_38100model_2_38102model_2_38104model_2_38106model_2_38108model_2_38110model_2_38112 ^model_2/StatefulPartitionedCall*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_377332#
!model_2/StatefulPartitionedCall_1?
lambda_1/PartitionedCallPartitionedCall(model_2/StatefulPartitionedCall:output:0*model_2/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_379392
lambda_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0dense_1_38125dense_1_38127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_378802!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_1/StatefulPartitionedCall ^model_2/StatefulPartitionedCall"^model_2/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:??????????@:??????????@: : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall2F
!model_2/StatefulPartitionedCall_1!model_2/StatefulPartitionedCall_1:g c
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_1:gc
0
_output_shapes
:??????????@
/
_user_specified_nameinput_layer_for_img_2
?	
?
'__inference_model_2_layer_call_fn_38399

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:???
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_377332
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?7
?
B__inference_model_2_layer_call_and_return_conditional_losses_38469

inputsE
+conv_layer_1_conv2d_readvariableop_resource::
,conv_layer_1_biasadd_readvariableop_resource:;
-batch_normalization_1_readvariableop_resource:=
/batch_normalization_1_readvariableop_1_resource:L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:A
,dense_layer_3_matmul_readvariableop_resource:???<
-dense_layer_3_biasadd_readvariableop_resource:	?
identity??$batch_normalization_1/AssignNewValue?&batch_normalization_1/AssignNewValue_1?5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?#conv_layer_1/BiasAdd/ReadVariableOp?"conv_layer_1/Conv2D/ReadVariableOp?$dense_layer_3/BiasAdd/ReadVariableOp?#dense_layer_3/MatMul/ReadVariableOp?
"conv_layer_1/Conv2D/ReadVariableOpReadVariableOp+conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02$
"conv_layer_1/Conv2D/ReadVariableOp?
conv_layer_1/Conv2DConv2Dinputs*conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2
conv_layer_1/Conv2D?
#conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#conv_layer_1/BiasAdd/ReadVariableOp?
conv_layer_1/BiasAddBiasAddconv_layer_1/Conv2D:output:0+conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2
conv_layer_1/BiasAdd?
conv_layer_1/SigmoidSigmoidconv_layer_1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????@2
conv_layer_1/Sigmoid?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_1/ReadVariableOp?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_1/ReadVariableOp_1?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv_layer_1/Sigmoid:y:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_1/FusedBatchNormV3?
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue?
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1?
average_pooling_layer_1/AvgPoolAvgPool*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
2!
average_pooling_layer_1/AvgPool
flatten_layer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
flatten_layer_1/Const?
flatten_layer_1/ReshapeReshape(average_pooling_layer_1/AvgPool:output:0flatten_layer_1/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_layer_1/Reshape?
#dense_layer_3/MatMul/ReadVariableOpReadVariableOp,dense_layer_3_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02%
#dense_layer_3/MatMul/ReadVariableOp?
dense_layer_3/MatMulMatMul flatten_layer_1/Reshape:output:0+dense_layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_layer_3/MatMul?
$dense_layer_3/BiasAdd/ReadVariableOpReadVariableOp-dense_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$dense_layer_3/BiasAdd/ReadVariableOp?
dense_layer_3/BiasAddBiasAdddense_layer_3/MatMul:product:0,dense_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_layer_3/BiasAdd?
dense_layer_3/SigmoidSigmoiddense_layer_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_layer_3/Sigmoidu
IdentityIdentitydense_layer_3/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1$^conv_layer_1/BiasAdd/ReadVariableOp#^conv_layer_1/Conv2D/ReadVariableOp%^dense_layer_3/BiasAdd/ReadVariableOp$^dense_layer_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12J
#conv_layer_1/BiasAdd/ReadVariableOp#conv_layer_1/BiasAdd/ReadVariableOp2H
"conv_layer_1/Conv2D/ReadVariableOp"conv_layer_1/Conv2D/ReadVariableOp2L
$dense_layer_3/BiasAdd/ReadVariableOp$dense_layer_3/BiasAdd/ReadVariableOp2J
#dense_layer_3/MatMul/ReadVariableOp#dense_layer_3/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37382

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_38958
file_prefix1
assignvariableop_dense_1_kernel:-
assignvariableop_1_dense_1_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: @
&assignvariableop_7_conv_layer_1_kernel:2
$assignvariableop_8_conv_layer_1_bias:<
.assignvariableop_9_batch_normalization_1_gamma:<
.assignvariableop_10_batch_normalization_1_beta:C
5assignvariableop_11_batch_normalization_1_moving_mean:G
9assignvariableop_12_batch_normalization_1_moving_variance:=
(assignvariableop_13_dense_layer_3_kernel:???5
&assignvariableop_14_dense_layer_3_bias:	?#
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: ;
)assignvariableop_19_adam_dense_1_kernel_m:5
'assignvariableop_20_adam_dense_1_bias_m:H
.assignvariableop_21_adam_conv_layer_1_kernel_m::
,assignvariableop_22_adam_conv_layer_1_bias_m:D
6assignvariableop_23_adam_batch_normalization_1_gamma_m:C
5assignvariableop_24_adam_batch_normalization_1_beta_m:D
/assignvariableop_25_adam_dense_layer_3_kernel_m:???<
-assignvariableop_26_adam_dense_layer_3_bias_m:	?;
)assignvariableop_27_adam_dense_1_kernel_v:5
'assignvariableop_28_adam_dense_1_bias_v:H
.assignvariableop_29_adam_conv_layer_1_kernel_v::
,assignvariableop_30_adam_conv_layer_1_bias_v:D
6assignvariableop_31_adam_batch_normalization_1_gamma_v:C
5assignvariableop_32_adam_batch_normalization_1_beta_v:D
/assignvariableop_33_adam_dense_layer_3_kernel_v:???<
-assignvariableop_34_adam_dense_layer_3_bias_v:	?
identity_36??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*?
value?B?$B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp&assignvariableop_7_conv_layer_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv_layer_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_1_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_batch_normalization_1_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp5assignvariableop_11_batch_normalization_1_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp9assignvariableop_12_batch_normalization_1_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp(assignvariableop_13_dense_layer_3_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_dense_layer_3_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp.assignvariableop_21_adam_conv_layer_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp,assignvariableop_22_adam_conv_layer_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_batch_normalization_1_gamma_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp5assignvariableop_24_adam_batch_normalization_1_beta_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_adam_dense_layer_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_adam_dense_layer_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_conv_layer_1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp,assignvariableop_30_adam_conv_layer_1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_batch_normalization_1_gamma_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp5assignvariableop_32_adam_batch_normalization_1_beta_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp/assignvariableop_33_adam_dense_layer_3_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp-assignvariableop_34_adam_dense_layer_3_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_349
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_35f
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_36?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_34AssignVariableOp_342(
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
?	
?
5__inference_batch_normalization_1_layer_call_fn_38552

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_373822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_flatten_layer_1_layer_call_and_return_conditional_losses_38694

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@ :W S
/
_output_shapes
:?????????@ 
 
_user_specified_nameinputs
?
?
-__inference_dense_layer_3_layer_call_fn_38703

inputs
unknown:???
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer_3_layer_call_and_return_conditional_losses_375842
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
n
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_38683

inputs
identity?
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:?????????@ *
ksize
*
paddingVALID*
strides
2	
AvgPooll
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:?????????@ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?K
?
__inference__traced_save_38843
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_conv_layer_1_kernel_read_readvariableop0
,savev2_conv_layer_1_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop3
/savev2_dense_layer_3_kernel_read_readvariableop1
-savev2_dense_layer_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop9
5savev2_adam_conv_layer_1_kernel_m_read_readvariableop7
3savev2_adam_conv_layer_1_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableop:
6savev2_adam_dense_layer_3_kernel_m_read_readvariableop8
4savev2_adam_dense_layer_3_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop9
5savev2_adam_conv_layer_1_kernel_v_read_readvariableop7
3savev2_adam_conv_layer_1_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableop:
6savev2_adam_dense_layer_3_kernel_v_read_readvariableop8
4savev2_adam_dense_layer_3_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*?
value?B?$B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_conv_layer_1_kernel_read_readvariableop,savev2_conv_layer_1_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop/savev2_dense_layer_3_kernel_read_readvariableop-savev2_dense_layer_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop5savev2_adam_conv_layer_1_kernel_m_read_readvariableop3savev2_adam_conv_layer_1_bias_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop6savev2_adam_dense_layer_3_kernel_m_read_readvariableop4savev2_adam_dense_layer_3_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop5savev2_adam_conv_layer_1_kernel_v_read_readvariableop3savev2_adam_conv_layer_1_bias_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop6savev2_adam_dense_layer_3_kernel_v_read_readvariableop4savev2_adam_dense_layer_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: : : : : :::::::???:?: : : : :::::::???:?:::::::???:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::'#
!
_output_shapes
:???:!

_output_shapes	
:?:
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
: :$ 

_output_shapes

:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::'#
!
_output_shapes
:???:!

_output_shapes	
:?:$ 

_output_shapes

:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::  

_output_shapes
:: !

_output_shapes
::'"#
!
_output_shapes
:???:!#

_output_shapes	
:?:$

_output_shapes
: 
?
?
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_38539

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@2	
BiasAddj
SigmoidSigmoidBiasAdd:output:0*
T0*0
_output_shapes
:??????????@2	
Sigmoido
IdentityIdentitySigmoid:y:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_model_2_layer_call_and_return_conditional_losses_37591

inputs,
conv_layer_1_37527: 
conv_layer_1_37529:)
batch_normalization_1_37550:)
batch_normalization_1_37552:)
batch_normalization_1_37554:)
batch_normalization_1_37556:(
dense_layer_3_37585:???"
dense_layer_3_37587:	?
identity??-batch_normalization_1/StatefulPartitionedCall?$conv_layer_1/StatefulPartitionedCall?%dense_layer_3/StatefulPartitionedCall?
$conv_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer_1_37527conv_layer_1_37529*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_375262&
$conv_layer_1/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-conv_layer_1/StatefulPartitionedCall:output:0batch_normalization_1_37550batch_normalization_1_37552batch_normalization_1_37554batch_normalization_1_37556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_375492/
-batch_normalization_1/StatefulPartitionedCall?
'average_pooling_layer_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_375632)
'average_pooling_layer_1/PartitionedCall?
flatten_layer_1/PartitionedCallPartitionedCall0average_pooling_layer_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_flatten_layer_1_layer_call_and_return_conditional_losses_375712!
flatten_layer_1/PartitionedCall?
%dense_layer_3/StatefulPartitionedCallStatefulPartitionedCall(flatten_layer_1/PartitionedCall:output:0dense_layer_3_37585dense_layer_3_37587*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer_3_layer_call_and_return_conditional_losses_375842'
%dense_layer_3/StatefulPartitionedCall?
IdentityIdentity.dense_layer_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall%^conv_layer_1/StatefulPartitionedCall&^dense_layer_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????@: : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2L
$conv_layer_1/StatefulPartitionedCall$conv_layer_1/StatefulPartitionedCall2N
%dense_layer_3/StatefulPartitionedCall%dense_layer_3/StatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
`
input_layer_for_img_1G
'serving_default_input_layer_for_img_1:0??????????@
`
input_layer_for_img_2G
'serving_default_input_layer_for_img_2:0??????????@;
dense_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
D
#_self_saveable_object_factories"
_tf_keras_input_layer
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
?
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
 bias
#!_self_saveable_object_factories
"	variables
#trainable_variables
$regularization_losses
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
&iter

'beta_1

(beta_2
	)decay
*learning_ratem? m?+m?,m?-m?.m?1m?2m?v? v?+v?,v?-v?.v?1v?2v?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
f
+0
,1
-2
.3
/4
05
16
27
8
 9"
trackable_list_wrapper
X
+0
,1
-2
.3
14
25
6
 7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3metrics
		variables
4layer_metrics

5layers

trainable_variables
6layer_regularization_losses
7non_trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
D
#8_self_saveable_object_factories"
_tf_keras_input_layer
?

+kernel
,bias
#9_self_saveable_object_factories
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
>axis
	-gamma
.beta
/moving_mean
0moving_variance
#?_self_saveable_object_factories
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#D_self_saveable_object_factories
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#I_self_saveable_object_factories
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

1kernel
2bias
#N_self_saveable_object_factories
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
X
+0
,1
-2
.3
/4
05
16
27"
trackable_list_wrapper
J
+0
,1
-2
.3
14
25"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Smetrics
	variables
Tlayer_metrics

Ulayers
trainable_variables
Vlayer_regularization_losses
Wnon_trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xmetrics
	variables
trainable_variables
Ylayer_metrics

Zlayers
[layer_regularization_losses
\non_trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
:2dense_1/bias
 "
trackable_dict_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]metrics
"	variables
#trainable_variables
^layer_metrics

_layers
`layer_regularization_losses
anon_trainable_variables
$regularization_losses
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
-:+2conv_layer_1/kernel
:2conv_layer_1/bias
):'2batch_normalization_1/gamma
(:&2batch_normalization_1/beta
1:/ (2!batch_normalization_1/moving_mean
5:3 (2%batch_normalization_1/moving_variance
):'???2dense_layer_3/kernel
!:?2dense_layer_3/bias
.
b0
c1"
trackable_list_wrapper
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
dmetrics
:	variables
;trainable_variables
elayer_metrics

flayers
glayer_regularization_losses
hnon_trainable_variables
<regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
-0
.1
/2
03"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
imetrics
@	variables
Atrainable_variables
jlayer_metrics

klayers
llayer_regularization_losses
mnon_trainable_variables
Bregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
nmetrics
E	variables
Ftrainable_variables
olayer_metrics

players
qlayer_regularization_losses
rnon_trainable_variables
Gregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
smetrics
J	variables
Ktrainable_variables
tlayer_metrics

ulayers
vlayer_regularization_losses
wnon_trainable_variables
Lregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
xmetrics
O	variables
Ptrainable_variables
ylayer_metrics

zlayers
{layer_regularization_losses
|non_trainable_variables
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
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
O
	}total
	~count
	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
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
.
/0
01"
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
:  (2total
:  (2count
.
}0
~1"
trackable_list_wrapper
-
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
2:02Adam/conv_layer_1/kernel/m
$:"2Adam/conv_layer_1/bias/m
.:,2"Adam/batch_normalization_1/gamma/m
-:+2!Adam/batch_normalization_1/beta/m
.:,???2Adam/dense_layer_3/kernel/m
&:$?2Adam/dense_layer_3/bias/m
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
2:02Adam/conv_layer_1/kernel/v
$:"2Adam/conv_layer_1/bias/v
.:,2"Adam/batch_normalization_1/gamma/v
-:+2!Adam/batch_normalization_1/beta/v
.:,???2Adam/dense_layer_3/kernel/v
&:$?2Adam/dense_layer_3/bias/v
?2?
'__inference_model_3_layer_call_fn_37910
'__inference_model_3_layer_call_fn_38191
'__inference_model_3_layer_call_fn_38217
'__inference_model_3_layer_call_fn_38057?
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
B__inference_model_3_layer_call_and_return_conditional_losses_38287
B__inference_model_3_layer_call_and_return_conditional_losses_38357
B__inference_model_3_layer_call_and_return_conditional_losses_38094
B__inference_model_3_layer_call_and_return_conditional_losses_38131?
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
 __inference__wrapped_model_37360input_layer_for_img_1input_layer_for_img_2"?
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
?2?
'__inference_model_2_layer_call_fn_37610
'__inference_model_2_layer_call_fn_38378
'__inference_model_2_layer_call_fn_38399
'__inference_model_2_layer_call_fn_37773?
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
B__inference_model_2_layer_call_and_return_conditional_losses_38434
B__inference_model_2_layer_call_and_return_conditional_losses_38469
B__inference_model_2_layer_call_and_return_conditional_losses_37798
B__inference_model_2_layer_call_and_return_conditional_losses_37823?
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
?2?
(__inference_lambda_1_layer_call_fn_38475
(__inference_lambda_1_layer_call_fn_38481?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lambda_1_layer_call_and_return_conditional_losses_38490
C__inference_lambda_1_layer_call_and_return_conditional_losses_38499?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_38508?
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
B__inference_dense_1_layer_call_and_return_conditional_losses_38519?
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
#__inference_signature_wrapper_38165input_layer_for_img_1input_layer_for_img_2"?
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
 
?2?
,__inference_conv_layer_1_layer_call_fn_38528?
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
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_38539?
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
?2?
5__inference_batch_normalization_1_layer_call_fn_38552
5__inference_batch_normalization_1_layer_call_fn_38565
5__inference_batch_normalization_1_layer_call_fn_38578
5__inference_batch_normalization_1_layer_call_fn_38591?
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
?2?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38609
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38627
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38645
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38663?
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
7__inference_average_pooling_layer_1_layer_call_fn_38668
7__inference_average_pooling_layer_1_layer_call_fn_38673?
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
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_38678
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_38683?
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
/__inference_flatten_layer_1_layer_call_fn_38688?
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
J__inference_flatten_layer_1_layer_call_and_return_conditional_losses_38694?
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
-__inference_dense_layer_3_layer_call_fn_38703?
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
H__inference_dense_layer_3_layer_call_and_return_conditional_losses_38714?
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
 ?
 __inference__wrapped_model_37360?
+,-./012 ???
|?y
w?t
8?5
input_layer_for_img_1??????????@
8?5
input_layer_for_img_2??????????@
? "1?.
,
dense_1!?
dense_1??????????
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_38678?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
R__inference_average_pooling_layer_1_layer_call_and_return_conditional_losses_38683i8?5
.?+
)?&
inputs??????????@
? "-?*
#? 
0?????????@ 
? ?
7__inference_average_pooling_layer_1_layer_call_fn_38668?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
7__inference_average_pooling_layer_1_layer_call_fn_38673\8?5
.?+
)?&
inputs??????????@
? " ??????????@ ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38609?-./0M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38627?-./0M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38645t-./0<?9
2?/
)?&
inputs??????????@
p 
? ".?+
$?!
0??????????@
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_38663t-./0<?9
2?/
)?&
inputs??????????@
p
? ".?+
$?!
0??????????@
? ?
5__inference_batch_normalization_1_layer_call_fn_38552?-./0M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
5__inference_batch_normalization_1_layer_call_fn_38565?-./0M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
5__inference_batch_normalization_1_layer_call_fn_38578g-./0<?9
2?/
)?&
inputs??????????@
p 
? "!???????????@?
5__inference_batch_normalization_1_layer_call_fn_38591g-./0<?9
2?/
)?&
inputs??????????@
p
? "!???????????@?
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_38539n+,8?5
.?+
)?&
inputs??????????@
? ".?+
$?!
0??????????@
? ?
,__inference_conv_layer_1_layer_call_fn_38528a+,8?5
.?+
)?&
inputs??????????@
? "!???????????@?
B__inference_dense_1_layer_call_and_return_conditional_losses_38519\ /?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_1_layer_call_fn_38508O /?,
%?"
 ?
inputs?????????
? "???????????
H__inference_dense_layer_3_layer_call_and_return_conditional_losses_38714_121?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? ?
-__inference_dense_layer_3_layer_call_fn_38703R121?.
'?$
"?
inputs???????????
? "????????????
J__inference_flatten_layer_1_layer_call_and_return_conditional_losses_38694b7?4
-?*
(?%
inputs?????????@ 
? "'?$
?
0???????????
? ?
/__inference_flatten_layer_1_layer_call_fn_38688U7?4
-?*
(?%
inputs?????????@ 
? "?????????????
C__inference_lambda_1_layer_call_and_return_conditional_losses_38490?d?a
Z?W
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????

 
p 
? "%?"
?
0?????????
? ?
C__inference_lambda_1_layer_call_and_return_conditional_losses_38499?d?a
Z?W
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????

 
p
? "%?"
?
0?????????
? ?
(__inference_lambda_1_layer_call_fn_38475?d?a
Z?W
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????

 
p 
? "???????????
(__inference_lambda_1_layer_call_fn_38481?d?a
Z?W
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????

 
p
? "???????????
B__inference_model_2_layer_call_and_return_conditional_losses_37798y+,-./012E?B
;?8
.?+
input_layer??????????@
p 

 
? "&?#
?
0??????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_37823y+,-./012E?B
;?8
.?+
input_layer??????????@
p

 
? "&?#
?
0??????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_38434t+,-./012@?=
6?3
)?&
inputs??????????@
p 

 
? "&?#
?
0??????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_38469t+,-./012@?=
6?3
)?&
inputs??????????@
p

 
? "&?#
?
0??????????
? ?
'__inference_model_2_layer_call_fn_37610l+,-./012E?B
;?8
.?+
input_layer??????????@
p 

 
? "????????????
'__inference_model_2_layer_call_fn_37773l+,-./012E?B
;?8
.?+
input_layer??????????@
p

 
? "????????????
'__inference_model_2_layer_call_fn_38378g+,-./012@?=
6?3
)?&
inputs??????????@
p 

 
? "????????????
'__inference_model_2_layer_call_fn_38399g+,-./012@?=
6?3
)?&
inputs??????????@
p

 
? "????????????
B__inference_model_3_layer_call_and_return_conditional_losses_38094?
+,-./012 ???
???
w?t
8?5
input_layer_for_img_1??????????@
8?5
input_layer_for_img_2??????????@
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_3_layer_call_and_return_conditional_losses_38131?
+,-./012 ???
???
w?t
8?5
input_layer_for_img_1??????????@
8?5
input_layer_for_img_2??????????@
p

 
? "%?"
?
0?????????
? ?
B__inference_model_3_layer_call_and_return_conditional_losses_38287?
+,-./012 t?q
j?g
]?Z
+?(
inputs/0??????????@
+?(
inputs/1??????????@
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_3_layer_call_and_return_conditional_losses_38357?
+,-./012 t?q
j?g
]?Z
+?(
inputs/0??????????@
+?(
inputs/1??????????@
p

 
? "%?"
?
0?????????
? ?
'__inference_model_3_layer_call_fn_37910?
+,-./012 ???
???
w?t
8?5
input_layer_for_img_1??????????@
8?5
input_layer_for_img_2??????????@
p 

 
? "???????????
'__inference_model_3_layer_call_fn_38057?
+,-./012 ???
???
w?t
8?5
input_layer_for_img_1??????????@
8?5
input_layer_for_img_2??????????@
p

 
? "???????????
'__inference_model_3_layer_call_fn_38191?
+,-./012 t?q
j?g
]?Z
+?(
inputs/0??????????@
+?(
inputs/1??????????@
p 

 
? "???????????
'__inference_model_3_layer_call_fn_38217?
+,-./012 t?q
j?g
]?Z
+?(
inputs/0??????????@
+?(
inputs/1??????????@
p

 
? "???????????
#__inference_signature_wrapper_38165?
+,-./012 ???
? 
???
Q
input_layer_for_img_18?5
input_layer_for_img_1??????????@
Q
input_layer_for_img_28?5
input_layer_for_img_2??????????@"1?.
,
dense_1!?
dense_1?????????
▄▄
╚ў
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
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
$
DisableCopyOnRead
resourceѕ
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
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
ѓ
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
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
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
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628├Ї
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
|
SGD/m/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameSGD/m/dense_5/bias
u
&SGD/m/dense_5/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense_5/bias*
_output_shapes
:*
dtype0
ё
SGD/m/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_nameSGD/m/dense_5/kernel
}
(SGD/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense_5/kernel*
_output_shapes

:@*
dtype0
|
SGD/m/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameSGD/m/dense_4/bias
u
&SGD/m/dense_4/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense_4/bias*
_output_shapes
:@*
dtype0
Ё
SGD/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*%
shared_nameSGD/m/dense_4/kernel
~
(SGD/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense_4/kernel*
_output_shapes
:	ђ@*
dtype0
}
SGD/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*#
shared_nameSGD/m/dense_3/bias
v
&SGD/m/dense_3/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense_3/bias*
_output_shapes	
:ђ*
dtype0
є
SGD/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*%
shared_nameSGD/m/dense_3/kernel

(SGD/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense_3/kernel* 
_output_shapes
:
ђђ*
dtype0
~
SGD/m/conv1d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameSGD/m/conv1d_5/bias
w
'SGD/m/conv1d_5/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv1d_5/bias*
_output_shapes
:@*
dtype0
і
SGD/m/conv1d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*&
shared_nameSGD/m/conv1d_5/kernel
Ѓ
)SGD/m/conv1d_5/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv1d_5/kernel*"
_output_shapes
:@@*
dtype0
~
SGD/m/conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameSGD/m/conv1d_4/bias
w
'SGD/m/conv1d_4/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv1d_4/bias*
_output_shapes
:@*
dtype0
і
SGD/m/conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameSGD/m/conv1d_4/kernel
Ѓ
)SGD/m/conv1d_4/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv1d_4/kernel*"
_output_shapes
:@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:@*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	ђ@*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:ђ*
dtype0
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
ђђ*
dtype0
r
conv1d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_5/bias
k
!conv1d_5/bias/Read/ReadVariableOpReadVariableOpconv1d_5/bias*
_output_shapes
:@*
dtype0
~
conv1d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv1d_5/kernel
w
#conv1d_5/kernel/Read/ReadVariableOpReadVariableOpconv1d_5/kernel*"
_output_shapes
:@@*
dtype0
r
conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_4/bias
k
!conv1d_4/bias/Read/ReadVariableOpReadVariableOpconv1d_4/bias*
_output_shapes
:@*
dtype0
~
conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv1d_4/kernel
w
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*"
_output_shapes
:@*
dtype0
Ѕ
serving_default_conv1d_4_inputPlaceholder*+
_output_shapes
:         <*
dtype0* 
shape:         <
т
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_4_inputconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference_signature_wrapper_4286

NoOpNoOp
яD
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЎD
valueЈDBїD BЁD
Х
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
╚
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op*
ј
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
ј
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
д
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias*
д
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias*
д
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias*
J
0
1
'2
(3
<4
=5
D6
E7
L8
M9*
J
0
1
'2
(3
<4
=5
D6
E7
L8
M9*
* 
░
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Strace_0
Ttrace_1* 

Utrace_0
Vtrace_1* 
* 
o
W
_variables
X_iterations
Y_learning_rate
Z_index_dict
[	momentums
\_update_step_xla*

]serving_default* 

0
1*

0
1*
* 
Њ
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ctrace_0* 

dtrace_0* 
_Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Љ
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

jtrace_0* 

ktrace_0* 

'0
(1*

'0
(1*
* 
Њ
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

qtrace_0* 

rtrace_0* 
_Y
VARIABLE_VALUEconv1d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Љ
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

xtrace_0* 

ytrace_0* 
* 
* 
* 
Љ
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

trace_0* 

ђtrace_0* 

<0
=1*

<0
=1*
* 
ў
Ђnon_trainable_variables
ѓlayers
Ѓmetrics
 ёlayer_regularization_losses
Ёlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

єtrace_0* 

Єtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

D0
E1*

D0
E1*
* 
ў
ѕnon_trainable_variables
Ѕlayers
іmetrics
 Іlayer_regularization_losses
їlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

Їtrace_0* 

јtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

L0
M1*
* 
ў
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

ћtrace_0* 

Ћtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

ќ0
Ќ1
ў2*
* 
* 
* 
* 
* 
* 
\
X0
Ў1
џ2
Џ3
ю4
Ю5
ъ6
Ъ7
а8
А9
б10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
Ў0
џ1
Џ2
ю3
Ю4
ъ5
Ъ6
а7
А8
б9*
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
<
Б	variables
ц	keras_api

Цtotal

дcount*
M
Д	variables
е	keras_api

Еtotal

фcount
Ф
_fn_kwargs*
<
г	variables
Г	keras_api

«total

»count*
`Z
VARIABLE_VALUESGD/m/conv1d_4/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESGD/m/conv1d_4/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv1d_5/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESGD/m/conv1d_5/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/dense_3/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/m/dense_3/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/dense_4/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/m/dense_4/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/dense_5/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESGD/m/dense_5/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*

Ц0
д1*

Б	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Е0
ф1*

Д	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

«0
»1*

г	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ы
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateSGD/m/conv1d_4/kernelSGD/m/conv1d_4/biasSGD/m/conv1d_5/kernelSGD/m/conv1d_5/biasSGD/m/dense_3/kernelSGD/m/dense_3/biasSGD/m/dense_4/kernelSGD/m/dense_4/biasSGD/m/dense_5/kernelSGD/m/dense_5/biastotal_2count_2total_1count_1totalcountConst*)
Tin"
 2*
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
GPU 2J 8ѓ *&
f!R
__inference__traced_save_4622
В
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateSGD/m/conv1d_4/kernelSGD/m/conv1d_4/biasSGD/m/conv1d_5/kernelSGD/m/conv1d_5/biasSGD/m/dense_3/kernelSGD/m/dense_3/biasSGD/m/dense_4/kernelSGD/m/dense_4/biasSGD/m/dense_5/kernelSGD/m/dense_5/biastotal_2count_2total_1count_1totalcount*(
Tin!
2*
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_restore_4715яё
џ
ё
+__inference_sequential_1_layer_call_fn_4208
conv1d_4_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:
ђђ
	unknown_4:	ђ
	unknown_5:	ђ@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityѕбStatefulPartitionedCall╦
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_4158o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         <: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         <
(
_user_specified_nameconv1d_4_input:$ 

_user_specified_name4186:$ 

_user_specified_name4188:$ 

_user_specified_name4190:$ 

_user_specified_name4192:$ 

_user_specified_name4194:$ 

_user_specified_name4196:$ 

_user_specified_name4198:$ 

_user_specified_name4200:$	 

_user_specified_name4202:$
 

_user_specified_name4204
у
ћ
&__inference_dense_4_layer_call_fn_4402

inputs
unknown:	ђ@
	unknown_0:@
identityѕбStatefulPartitionedCallо
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
GPU 2J 8ѓ *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_4104o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:$ 

_user_specified_name4396:$ 

_user_specified_name4398
Ц
D
(__inference_flatten_1_layer_call_fn_4367

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_4076a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Ж
ч
"__inference_signature_wrapper_4286
conv1d_4_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:
ђђ
	unknown_4:	ђ
	unknown_5:	ђ@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityѕбStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__wrapped_model_3998o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         <: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         <
(
_user_specified_nameconv1d_4_input:$ 

_user_specified_name4264:$ 

_user_specified_name4266:$ 

_user_specified_name4268:$ 

_user_specified_name4270:$ 

_user_specified_name4272:$ 

_user_specified_name4274:$ 

_user_specified_name4276:$ 

_user_specified_name4278:$	 

_user_specified_name4280:$
 

_user_specified_name4282
й
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_4076

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
╠

з
A__inference_dense_4_layer_call_and_return_conditional_losses_4104

inputs1
matmul_readvariableop_resource:	ђ@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╬
e
I__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_4324

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           д
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
Ѓ
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
╬
e
I__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4019

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           д
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
Ѓ
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
ш
Љ
B__inference_conv1d_5_layer_call_and_return_conditional_losses_4349

inputsA
+conv1d_expanddims_1_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        Ђ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         @њ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : а
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@Г
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:         @*
squeeze_dims

§        r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ђ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         @e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         @`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
й
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_4373

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
хо
¤
__inference__traced_save_4622
file_prefix<
&read_disablecopyonread_conv1d_4_kernel:@4
&read_1_disablecopyonread_conv1d_4_bias:@>
(read_2_disablecopyonread_conv1d_5_kernel:@@4
&read_3_disablecopyonread_conv1d_5_bias:@;
'read_4_disablecopyonread_dense_3_kernel:
ђђ4
%read_5_disablecopyonread_dense_3_bias:	ђ:
'read_6_disablecopyonread_dense_4_kernel:	ђ@3
%read_7_disablecopyonread_dense_4_bias:@9
'read_8_disablecopyonread_dense_5_kernel:@3
%read_9_disablecopyonread_dense_5_bias:-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: E
/read_12_disablecopyonread_sgd_m_conv1d_4_kernel:@;
-read_13_disablecopyonread_sgd_m_conv1d_4_bias:@E
/read_14_disablecopyonread_sgd_m_conv1d_5_kernel:@@;
-read_15_disablecopyonread_sgd_m_conv1d_5_bias:@B
.read_16_disablecopyonread_sgd_m_dense_3_kernel:
ђђ;
,read_17_disablecopyonread_sgd_m_dense_3_bias:	ђA
.read_18_disablecopyonread_sgd_m_dense_4_kernel:	ђ@:
,read_19_disablecopyonread_sgd_m_dense_4_bias:@@
.read_20_disablecopyonread_sgd_m_dense_5_kernel:@:
,read_21_disablecopyonread_sgd_m_dense_5_bias:+
!read_22_disablecopyonread_total_2: +
!read_23_disablecopyonread_count_2: +
!read_24_disablecopyonread_total_1: +
!read_25_disablecopyonread_count_1: )
read_26_disablecopyonread_total: )
read_27_disablecopyonread_count: 
savev2_const
identity_57ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_26/DisableCopyOnReadбRead_26/ReadVariableOpбRead_27/DisableCopyOnReadбRead_27/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv1d_4_kernel"/device:CPU:0*
_output_shapes
 д
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv1d_4_kernel^Read/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@*
dtype0m
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
:@z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv1d_4_bias"/device:CPU:0*
_output_shapes
 б
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv1d_4_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv1d_5_kernel"/device:CPU:0*
_output_shapes
 г
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv1d_5_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0q

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@g

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv1d_5_bias"/device:CPU:0*
_output_shapes
 б
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv1d_5_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 Е
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_3_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђe

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђy
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 б
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_3_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 е
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_4_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ђ@*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ђ@f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	ђ@y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 А
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_4_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 Д
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_5_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:@y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 А
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_5_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ю
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_iteration^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 А
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: ё
Read_12/DisableCopyOnReadDisableCopyOnRead/read_12_disablecopyonread_sgd_m_conv1d_4_kernel"/device:CPU:0*
_output_shapes
 х
Read_12/ReadVariableOpReadVariableOp/read_12_disablecopyonread_sgd_m_conv1d_4_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@*
dtype0s
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@i
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ѓ
Read_13/DisableCopyOnReadDisableCopyOnRead-read_13_disablecopyonread_sgd_m_conv1d_4_bias"/device:CPU:0*
_output_shapes
 Ф
Read_13/ReadVariableOpReadVariableOp-read_13_disablecopyonread_sgd_m_conv1d_4_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@ё
Read_14/DisableCopyOnReadDisableCopyOnRead/read_14_disablecopyonread_sgd_m_conv1d_5_kernel"/device:CPU:0*
_output_shapes
 х
Read_14/ReadVariableOpReadVariableOp/read_14_disablecopyonread_sgd_m_conv1d_5_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@ѓ
Read_15/DisableCopyOnReadDisableCopyOnRead-read_15_disablecopyonread_sgd_m_conv1d_5_bias"/device:CPU:0*
_output_shapes
 Ф
Read_15/ReadVariableOpReadVariableOp-read_15_disablecopyonread_sgd_m_conv1d_5_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ѓ
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_sgd_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_sgd_m_dense_3_kernel^Read_16/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђЂ
Read_17/DisableCopyOnReadDisableCopyOnRead,read_17_disablecopyonread_sgd_m_dense_3_bias"/device:CPU:0*
_output_shapes
 Ф
Read_17/ReadVariableOpReadVariableOp,read_17_disablecopyonread_sgd_m_dense_3_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЃ
Read_18/DisableCopyOnReadDisableCopyOnRead.read_18_disablecopyonread_sgd_m_dense_4_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_18/ReadVariableOpReadVariableOp.read_18_disablecopyonread_sgd_m_dense_4_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ђ@*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ђ@f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	ђ@Ђ
Read_19/DisableCopyOnReadDisableCopyOnRead,read_19_disablecopyonread_sgd_m_dense_4_bias"/device:CPU:0*
_output_shapes
 ф
Read_19/ReadVariableOpReadVariableOp,read_19_disablecopyonread_sgd_m_dense_4_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ѓ
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_sgd_m_dense_5_kernel"/device:CPU:0*
_output_shapes
 ░
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_sgd_m_dense_5_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ђ
Read_21/DisableCopyOnReadDisableCopyOnRead,read_21_disablecopyonread_sgd_m_dense_5_bias"/device:CPU:0*
_output_shapes
 ф
Read_21/ReadVariableOpReadVariableOp,read_21_disablecopyonread_sgd_m_dense_5_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_22/DisableCopyOnReadDisableCopyOnRead!read_22_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 Џ
Read_22/ReadVariableOpReadVariableOp!read_22_disablecopyonread_total_2^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_23/DisableCopyOnReadDisableCopyOnRead!read_23_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 Џ
Read_23/ReadVariableOpReadVariableOp!read_23_disablecopyonread_count_2^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_24/DisableCopyOnReadDisableCopyOnRead!read_24_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_24/ReadVariableOpReadVariableOp!read_24_disablecopyonread_total_1^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_25/DisableCopyOnReadDisableCopyOnRead!read_25_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_25/ReadVariableOpReadVariableOp!read_25_disablecopyonread_count_1^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_26/DisableCopyOnReadDisableCopyOnReadread_26_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_26/ReadVariableOpReadVariableOpread_26_disablecopyonread_total^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_27/DisableCopyOnReadDisableCopyOnReadread_27_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_27/ReadVariableOpReadVariableOpread_27_disablecopyonread_count^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: ┌
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ѓ
valueщBШB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHД
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B О
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_56Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_57IdentityIdentity_56:output:0^NoOp*
T0*
_output_shapes
: в
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_57Identity_57:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_nameconv1d_4/kernel:-)
'
_user_specified_nameconv1d_4/bias:/+
)
_user_specified_nameconv1d_5/kernel:-)
'
_user_specified_nameconv1d_5/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:.	*
(
_user_specified_namedense_5/kernel:,
(
&
_user_specified_namedense_5/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:51
/
_user_specified_nameSGD/m/conv1d_4/kernel:3/
-
_user_specified_nameSGD/m/conv1d_4/bias:51
/
_user_specified_nameSGD/m/conv1d_5/kernel:3/
-
_user_specified_nameSGD/m/conv1d_5/bias:40
.
_user_specified_nameSGD/m/dense_3/kernel:2.
,
_user_specified_nameSGD/m/dense_3/bias:40
.
_user_specified_nameSGD/m/dense_4/kernel:2.
,
_user_specified_nameSGD/m/dense_4/bias:40
.
_user_specified_nameSGD/m/dense_5/kernel:2.
,
_user_specified_nameSGD/m/dense_5/bias:'#
!
_user_specified_name	total_2:'#
!
_user_specified_name	count_2:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
н

ш
A__inference_dense_3_layer_call_and_return_conditional_losses_4088

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
оV
ї

__inference__wrapped_model_3998
conv1d_4_inputW
Asequential_1_conv1d_4_conv1d_expanddims_1_readvariableop_resource:@C
5sequential_1_conv1d_4_biasadd_readvariableop_resource:@W
Asequential_1_conv1d_5_conv1d_expanddims_1_readvariableop_resource:@@C
5sequential_1_conv1d_5_biasadd_readvariableop_resource:@G
3sequential_1_dense_3_matmul_readvariableop_resource:
ђђC
4sequential_1_dense_3_biasadd_readvariableop_resource:	ђF
3sequential_1_dense_4_matmul_readvariableop_resource:	ђ@B
4sequential_1_dense_4_biasadd_readvariableop_resource:@E
3sequential_1_dense_5_matmul_readvariableop_resource:@B
4sequential_1_dense_5_biasadd_readvariableop_resource:
identityѕб,sequential_1/conv1d_4/BiasAdd/ReadVariableOpб8sequential_1/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpб,sequential_1/conv1d_5/BiasAdd/ReadVariableOpб8sequential_1/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpб+sequential_1/dense_3/BiasAdd/ReadVariableOpб*sequential_1/dense_3/MatMul/ReadVariableOpб+sequential_1/dense_4/BiasAdd/ReadVariableOpб*sequential_1/dense_4/MatMul/ReadVariableOpб+sequential_1/dense_5/BiasAdd/ReadVariableOpб*sequential_1/dense_5/MatMul/ReadVariableOpv
+sequential_1/conv1d_4/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        х
'sequential_1/conv1d_4/Conv1D/ExpandDims
ExpandDimsconv1d_4_input4sequential_1/conv1d_4/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         <Й
8sequential_1/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_1_conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0o
-sequential_1/conv1d_4/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Р
)sequential_1/conv1d_4/Conv1D/ExpandDims_1
ExpandDims@sequential_1/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp:value:06sequential_1/conv1d_4/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@№
sequential_1/conv1d_4/Conv1DConv2D0sequential_1/conv1d_4/Conv1D/ExpandDims:output:02sequential_1/conv1d_4/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         ;@*
paddingVALID*
strides
г
$sequential_1/conv1d_4/Conv1D/SqueezeSqueeze%sequential_1/conv1d_4/Conv1D:output:0*
T0*+
_output_shapes
:         ;@*
squeeze_dims

§        ъ
,sequential_1/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0├
sequential_1/conv1d_4/BiasAddBiasAdd-sequential_1/conv1d_4/Conv1D/Squeeze:output:04sequential_1/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         ;@ђ
sequential_1/conv1d_4/ReluRelu&sequential_1/conv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:         ;@m
+sequential_1/max_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :¤
'sequential_1/max_pooling1d_3/ExpandDims
ExpandDims(sequential_1/conv1d_4/Relu:activations:04sequential_1/max_pooling1d_3/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         ;@╬
$sequential_1/max_pooling1d_3/MaxPoolMaxPool0sequential_1/max_pooling1d_3/ExpandDims:output:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ф
$sequential_1/max_pooling1d_3/SqueezeSqueeze-sequential_1/max_pooling1d_3/MaxPool:output:0*
T0*+
_output_shapes
:         @*
squeeze_dims
v
+sequential_1/conv1d_5/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        н
'sequential_1/conv1d_5/Conv1D/ExpandDims
ExpandDims-sequential_1/max_pooling1d_3/Squeeze:output:04sequential_1/conv1d_5/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         @Й
8sequential_1/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_1_conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0o
-sequential_1/conv1d_5/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Р
)sequential_1/conv1d_5/Conv1D/ExpandDims_1
ExpandDims@sequential_1/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp:value:06sequential_1/conv1d_5/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@№
sequential_1/conv1d_5/Conv1DConv2D0sequential_1/conv1d_5/Conv1D/ExpandDims:output:02sequential_1/conv1d_5/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
г
$sequential_1/conv1d_5/Conv1D/SqueezeSqueeze%sequential_1/conv1d_5/Conv1D:output:0*
T0*+
_output_shapes
:         @*
squeeze_dims

§        ъ
,sequential_1/conv1d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0├
sequential_1/conv1d_5/BiasAddBiasAdd-sequential_1/conv1d_5/Conv1D/Squeeze:output:04sequential_1/conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @ђ
sequential_1/conv1d_5/ReluRelu&sequential_1/conv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:         @m
+sequential_1/max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :¤
'sequential_1/max_pooling1d_4/ExpandDims
ExpandDims(sequential_1/conv1d_5/Relu:activations:04sequential_1/max_pooling1d_4/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         @╬
$sequential_1/max_pooling1d_4/MaxPoolMaxPool0sequential_1/max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ф
$sequential_1/max_pooling1d_4/SqueezeSqueeze-sequential_1/max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:         @*
squeeze_dims
m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  ▓
sequential_1/flatten_1/ReshapeReshape-sequential_1/max_pooling1d_4/Squeeze:output:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:         ђа
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0х
sequential_1/dense_3/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЮ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Х
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ{
sequential_1/dense_3/ReluRelu%sequential_1/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЪ
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0┤
sequential_1/dense_4/MatMulMatMul'sequential_1/dense_3/Relu:activations:02sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ю
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0х
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @z
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         @ъ
*sequential_1/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0┤
sequential_1/dense_5/MatMulMatMul'sequential_1/dense_4/Relu:activations:02sequential_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ю
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0х
sequential_1/dense_5/BiasAddBiasAdd%sequential_1/dense_5/MatMul:product:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
IdentityIdentity%sequential_1/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Є
NoOpNoOp-^sequential_1/conv1d_4/BiasAdd/ReadVariableOp9^sequential_1/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp-^sequential_1/conv1d_5/BiasAdd/ReadVariableOp9^sequential_1/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp+^sequential_1/dense_5/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         <: : : : : : : : : : 2\
,sequential_1/conv1d_4/BiasAdd/ReadVariableOp,sequential_1/conv1d_4/BiasAdd/ReadVariableOp2t
8sequential_1/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp8sequential_1/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp2\
,sequential_1/conv1d_5/BiasAdd/ReadVariableOp,sequential_1/conv1d_5/BiasAdd/ReadVariableOp2t
8sequential_1/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp8sequential_1/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2X
*sequential_1/dense_5/MatMul/ReadVariableOp*sequential_1/dense_5/MatMul/ReadVariableOp:[ W
+
_output_shapes
:         <
(
_user_specified_nameconv1d_4_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
▄ђ
Ф
 __inference__traced_restore_4715
file_prefix6
 assignvariableop_conv1d_4_kernel:@.
 assignvariableop_1_conv1d_4_bias:@8
"assignvariableop_2_conv1d_5_kernel:@@.
 assignvariableop_3_conv1d_5_bias:@5
!assignvariableop_4_dense_3_kernel:
ђђ.
assignvariableop_5_dense_3_bias:	ђ4
!assignvariableop_6_dense_4_kernel:	ђ@-
assignvariableop_7_dense_4_bias:@3
!assignvariableop_8_dense_5_kernel:@-
assignvariableop_9_dense_5_bias:'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: ?
)assignvariableop_12_sgd_m_conv1d_4_kernel:@5
'assignvariableop_13_sgd_m_conv1d_4_bias:@?
)assignvariableop_14_sgd_m_conv1d_5_kernel:@@5
'assignvariableop_15_sgd_m_conv1d_5_bias:@<
(assignvariableop_16_sgd_m_dense_3_kernel:
ђђ5
&assignvariableop_17_sgd_m_dense_3_bias:	ђ;
(assignvariableop_18_sgd_m_dense_4_kernel:	ђ@4
&assignvariableop_19_sgd_m_dense_4_bias:@:
(assignvariableop_20_sgd_m_dense_5_kernel:@4
&assignvariableop_21_sgd_m_dense_5_bias:%
assignvariableop_22_total_2: %
assignvariableop_23_count_2: %
assignvariableop_24_total_1: %
assignvariableop_25_count_1: #
assignvariableop_26_total: #
assignvariableop_27_count: 
identity_29ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9П
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ѓ
valueщBШB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHф
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B ░
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ѕ
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOpAssignVariableOp assignvariableop_conv1d_4_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_4_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_5_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_5_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_3_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_3_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_4_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_4_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_5_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_5_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_12AssignVariableOp)assignvariableop_12_sgd_m_conv1d_4_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_13AssignVariableOp'assignvariableop_13_sgd_m_conv1d_4_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_14AssignVariableOp)assignvariableop_14_sgd_m_conv1d_5_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_15AssignVariableOp'assignvariableop_15_sgd_m_conv1d_5_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_16AssignVariableOp(assignvariableop_16_sgd_m_dense_3_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_17AssignVariableOp&assignvariableop_17_sgd_m_dense_3_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_18AssignVariableOp(assignvariableop_18_sgd_m_dense_4_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_19AssignVariableOp&assignvariableop_19_sgd_m_dense_4_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_20AssignVariableOp(assignvariableop_20_sgd_m_dense_5_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_21AssignVariableOp&assignvariableop_21_sgd_m_dense_5_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_2Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_2Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_1Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_1Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 и
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: ђ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
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
_user_specified_namefile_prefix:/+
)
_user_specified_nameconv1d_4/kernel:-)
'
_user_specified_nameconv1d_4/bias:/+
)
_user_specified_nameconv1d_5/kernel:-)
'
_user_specified_nameconv1d_5/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:.	*
(
_user_specified_namedense_5/kernel:,
(
&
_user_specified_namedense_5/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:51
/
_user_specified_nameSGD/m/conv1d_4/kernel:3/
-
_user_specified_nameSGD/m/conv1d_4/bias:51
/
_user_specified_nameSGD/m/conv1d_5/kernel:3/
-
_user_specified_nameSGD/m/conv1d_5/bias:40
.
_user_specified_nameSGD/m/dense_3/kernel:2.
,
_user_specified_nameSGD/m/dense_3/bias:40
.
_user_specified_nameSGD/m/dense_4/kernel:2.
,
_user_specified_nameSGD/m/dense_4/bias:40
.
_user_specified_nameSGD/m/dense_5/kernel:2.
,
_user_specified_nameSGD/m/dense_5/bias:'#
!
_user_specified_name	total_2:'#
!
_user_specified_name	count_2:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount
Щ
ў
'__inference_conv1d_4_layer_call_fn_4295

inputs
unknown:@
	unknown_0:@
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         ;@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_4_layer_call_and_return_conditional_losses_4042s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         ;@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         <: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs:$ 

_user_specified_name4289:$ 

_user_specified_name4291
Щ
ў
'__inference_conv1d_5_layer_call_fn_4333

inputs
unknown:@@
	unknown_0:@
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_5_layer_call_and_return_conditional_losses_4064s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs:$ 

_user_specified_name4327:$ 

_user_specified_name4329
З	
Ы
A__inference_dense_5_layer_call_and_return_conditional_losses_4432

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
в
ќ
&__inference_dense_3_layer_call_fn_4382

inputs
unknown:
ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallО
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
GPU 2J 8ѓ *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_4088p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:$ 

_user_specified_name4376:$ 

_user_specified_name4378
Й&
Н
F__inference_sequential_1_layer_call_and_return_conditional_losses_4158
conv1d_4_input#
conv1d_4_4129:@
conv1d_4_4131:@#
conv1d_5_4135:@@
conv1d_5_4137:@ 
dense_3_4142:
ђђ
dense_3_4144:	ђ
dense_4_4147:	ђ@
dense_4_4149:@
dense_5_4152:@
dense_5_4154:
identityѕб conv1d_4/StatefulPartitionedCallб conv1d_5/StatefulPartitionedCallбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallбdense_5/StatefulPartitionedCallШ
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_4129conv1d_4_4131*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         ;@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_4_layer_call_and_return_conditional_losses_4042в
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_4006љ
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_3/PartitionedCall:output:0conv1d_5_4135conv1d_5_4137*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_5_layer_call_and_return_conditional_losses_4064в
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4019█
flatten_1/PartitionedCallPartitionedCall(max_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_4076Ѓ
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_4142dense_3_4144*
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
GPU 2J 8ѓ *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_4088ѕ
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_4147dense_4_4149*
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
GPU 2J 8ѓ *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_4104ѕ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_4152dense_5_4154*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_4119w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╬
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         <: : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:[ W
+
_output_shapes
:         <
(
_user_specified_nameconv1d_4_input:$ 

_user_specified_name4129:$ 

_user_specified_name4131:$ 

_user_specified_name4135:$ 

_user_specified_name4137:$ 

_user_specified_name4142:$ 

_user_specified_name4144:$ 

_user_specified_name4147:$ 

_user_specified_name4149:$	 

_user_specified_name4152:$
 

_user_specified_name4154
С
Њ
&__inference_dense_5_layer_call_fn_4422

inputs
unknown:@
	unknown_0:
identityѕбStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_4119o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:$ 

_user_specified_name4416:$ 

_user_specified_name4418
╬
e
I__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4362

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           д
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
Ѓ
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
ш
Љ
B__inference_conv1d_4_layer_call_and_return_conditional_losses_4311

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        Ђ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         <њ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : а
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@Г
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         ;@*
paddingVALID*
strides
ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:         ;@*
squeeze_dims

§        r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ђ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         ;@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         ;@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         ;@`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         <: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
J
.__inference_max_pooling1d_3_layer_call_fn_4316

inputs
identity╩
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_4006v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
╠

з
A__inference_dense_4_layer_call_and_return_conditional_losses_4413

inputs1
matmul_readvariableop_resource:	ђ@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
З	
Ы
A__inference_dense_5_layer_call_and_return_conditional_losses_4119

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Й&
Н
F__inference_sequential_1_layer_call_and_return_conditional_losses_4126
conv1d_4_input#
conv1d_4_4043:@
conv1d_4_4045:@#
conv1d_5_4065:@@
conv1d_5_4067:@ 
dense_3_4089:
ђђ
dense_3_4091:	ђ
dense_4_4105:	ђ@
dense_4_4107:@
dense_5_4120:@
dense_5_4122:
identityѕб conv1d_4/StatefulPartitionedCallб conv1d_5/StatefulPartitionedCallбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallбdense_5/StatefulPartitionedCallШ
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_4043conv1d_4_4045*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         ;@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_4_layer_call_and_return_conditional_losses_4042в
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_4006љ
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_3/PartitionedCall:output:0conv1d_5_4065conv1d_5_4067*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_5_layer_call_and_return_conditional_losses_4064в
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4019█
flatten_1/PartitionedCallPartitionedCall(max_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_4076Ѓ
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_4089dense_3_4091*
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
GPU 2J 8ѓ *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_4088ѕ
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_4105dense_4_4107*
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
GPU 2J 8ѓ *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_4104ѕ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_4120dense_5_4122*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_4119w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╬
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         <: : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:[ W
+
_output_shapes
:         <
(
_user_specified_nameconv1d_4_input:$ 

_user_specified_name4043:$ 

_user_specified_name4045:$ 

_user_specified_name4065:$ 

_user_specified_name4067:$ 

_user_specified_name4089:$ 

_user_specified_name4091:$ 

_user_specified_name4105:$ 

_user_specified_name4107:$	 

_user_specified_name4120:$
 

_user_specified_name4122
н

ш
A__inference_dense_3_layer_call_and_return_conditional_losses_4393

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ш
Љ
B__inference_conv1d_5_layer_call_and_return_conditional_losses_4064

inputsA
+conv1d_expanddims_1_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        Ђ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         @њ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : а
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@Г
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:         @*
squeeze_dims

§        r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ђ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         @e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         @`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
џ
ё
+__inference_sequential_1_layer_call_fn_4183
conv1d_4_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:
ђђ
	unknown_4:	ђ
	unknown_5:	ђ@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityѕбStatefulPartitionedCall╦
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_4126o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         <: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         <
(
_user_specified_nameconv1d_4_input:$ 

_user_specified_name4161:$ 

_user_specified_name4163:$ 

_user_specified_name4165:$ 

_user_specified_name4167:$ 

_user_specified_name4169:$ 

_user_specified_name4171:$ 

_user_specified_name4173:$ 

_user_specified_name4175:$	 

_user_specified_name4177:$
 

_user_specified_name4179
 
J
.__inference_max_pooling1d_4_layer_call_fn_4354

inputs
identity╩
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4019v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
ш
Љ
B__inference_conv1d_4_layer_call_and_return_conditional_losses_4042

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        Ђ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         <њ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : а
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@Г
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         ;@*
paddingVALID*
strides
ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:         ;@*
squeeze_dims

§        r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ђ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         ;@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         ;@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         ;@`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         <: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╬
e
I__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_4006

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           д
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
Ѓ
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultе
M
conv1d_4_input;
 serving_default_conv1d_4_input:0         <;
dense_50
StatefulPartitionedCall:0         tensorflow/serving/predict:пи
л
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
П
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
Ц
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
╗
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias"
_tf_keras_layer
╗
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias"
_tf_keras_layer
f
0
1
'2
(3
<4
=5
D6
E7
L8
M9"
trackable_list_wrapper
f
0
1
'2
(3
<4
=5
D6
E7
L8
M9"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╔
Strace_0
Ttrace_12њ
+__inference_sequential_1_layer_call_fn_4183
+__inference_sequential_1_layer_call_fn_4208х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zStrace_0zTtrace_1
 
Utrace_0
Vtrace_12╚
F__inference_sequential_1_layer_call_and_return_conditional_losses_4126
F__inference_sequential_1_layer_call_and_return_conditional_losses_4158х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zUtrace_0zVtrace_1
ЛB╬
__inference__wrapped_model_3998conv1d_4_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
і
W
_variables
X_iterations
Y_learning_rate
Z_index_dict
[	momentums
\_update_step_xla"
experimentalOptimizer
,
]serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
р
ctrace_02─
'__inference_conv1d_4_layer_call_fn_4295ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zctrace_0
Ч
dtrace_02▀
B__inference_conv1d_4_layer_call_and_return_conditional_losses_4311ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zdtrace_0
%:#@2conv1d_4/kernel
:@2conv1d_4/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
У
jtrace_02╦
.__inference_max_pooling1d_3_layer_call_fn_4316ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zjtrace_0
Ѓ
ktrace_02Т
I__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_4324ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zktrace_0
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
р
qtrace_02─
'__inference_conv1d_5_layer_call_fn_4333ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zqtrace_0
Ч
rtrace_02▀
B__inference_conv1d_5_layer_call_and_return_conditional_losses_4349ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zrtrace_0
%:#@@2conv1d_5/kernel
:@2conv1d_5/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
У
xtrace_02╦
.__inference_max_pooling1d_4_layer_call_fn_4354ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zxtrace_0
Ѓ
ytrace_02Т
I__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4362ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zytrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
Р
trace_02┼
(__inference_flatten_1_layer_call_fn_4367ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 ztrace_0
 
ђtrace_02Я
C__inference_flatten_1_layer_call_and_return_conditional_losses_4373ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zђtrace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ђnon_trainable_variables
ѓlayers
Ѓmetrics
 ёlayer_regularization_losses
Ёlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
Р
єtrace_02├
&__inference_dense_3_layer_call_fn_4382ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zєtrace_0
§
Єtrace_02я
A__inference_dense_3_layer_call_and_return_conditional_losses_4393ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zЄtrace_0
": 
ђђ2dense_3/kernel
:ђ2dense_3/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ѕnon_trainable_variables
Ѕlayers
іmetrics
 Іlayer_regularization_losses
їlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
Р
Їtrace_02├
&__inference_dense_4_layer_call_fn_4402ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zЇtrace_0
§
јtrace_02я
A__inference_dense_4_layer_call_and_return_conditional_losses_4413ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zјtrace_0
!:	ђ@2dense_4/kernel
:@2dense_4/bias
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
Р
ћtrace_02├
&__inference_dense_5_layer_call_fn_4422ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zћtrace_0
§
Ћtrace_02я
A__inference_dense_5_layer_call_and_return_conditional_losses_4432ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 zЋtrace_0
 :@2dense_5/kernel
:2dense_5/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
8
ќ0
Ќ1
ў2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЩBэ
+__inference_sequential_1_layer_call_fn_4183conv1d_4_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
+__inference_sequential_1_layer_call_fn_4208conv1d_4_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЋBњ
F__inference_sequential_1_layer_call_and_return_conditional_losses_4126conv1d_4_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЋBњ
F__inference_sequential_1_layer_call_and_return_conditional_losses_4158conv1d_4_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
x
X0
Ў1
џ2
Џ3
ю4
Ю5
ъ6
Ъ7
а8
А9
б10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
Ў0
џ1
Џ2
ю3
Ю4
ъ5
Ъ6
а7
А8
б9"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
лB═
"__inference_signature_wrapper_4286conv1d_4_input"ћ
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
ЛB╬
'__inference_conv1d_4_layer_call_fn_4295inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 
ВBж
B__inference_conv1d_4_layer_call_and_return_conditional_losses_4311inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
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
пBН
.__inference_max_pooling1d_3_layer_call_fn_4316inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 
зB­
I__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_4324inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
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
ЛB╬
'__inference_conv1d_5_layer_call_fn_4333inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 
ВBж
B__inference_conv1d_5_layer_call_and_return_conditional_losses_4349inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
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
пBН
.__inference_max_pooling1d_4_layer_call_fn_4354inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 
зB­
I__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4362inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
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
мB¤
(__inference_flatten_1_layer_call_fn_4367inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 
ьBЖ
C__inference_flatten_1_layer_call_and_return_conditional_losses_4373inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
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
лB═
&__inference_dense_3_layer_call_fn_4382inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 
вBУ
A__inference_dense_3_layer_call_and_return_conditional_losses_4393inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
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
лB═
&__inference_dense_4_layer_call_fn_4402inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 
вBУ
A__inference_dense_4_layer_call_and_return_conditional_losses_4413inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
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
лB═
&__inference_dense_5_layer_call_fn_4422inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 
вBУ
A__inference_dense_5_layer_call_and_return_conditional_losses_4432inputs"ў
Љ▓Ї
FullArgSpec
argsџ

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
annotationsф *
 
R
Б	variables
ц	keras_api

Цtotal

дcount"
_tf_keras_metric
c
Д	variables
е	keras_api

Еtotal

фcount
Ф
_fn_kwargs"
_tf_keras_metric
R
г	variables
Г	keras_api

«total

»count"
_tf_keras_metric
):'@2SGD/m/conv1d_4/kernel
:@2SGD/m/conv1d_4/bias
):'@@2SGD/m/conv1d_5/kernel
:@2SGD/m/conv1d_5/bias
&:$
ђђ2SGD/m/dense_3/kernel
:ђ2SGD/m/dense_3/bias
%:#	ђ@2SGD/m/dense_4/kernel
:@2SGD/m/dense_4/bias
$:"@2SGD/m/dense_5/kernel
:2SGD/m/dense_5/bias
0
Ц0
д1"
trackable_list_wrapper
.
Б	variables"
_generic_user_object
:  (2total
:  (2count
0
Е0
ф1"
trackable_list_wrapper
.
Д	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
«0
»1"
trackable_list_wrapper
.
г	variables"
_generic_user_object
:  (2total
:  (2countЪ
__inference__wrapped_model_3998|
'(<=DELM;б8
1б.
,і)
conv1d_4_input         <
ф "1ф.
,
dense_5!і
dense_5         ▒
B__inference_conv1d_4_layer_call_and_return_conditional_losses_4311k3б0
)б&
$і!
inputs         <
ф "0б-
&і#
tensor_0         ;@
џ І
'__inference_conv1d_4_layer_call_fn_4295`3б0
)б&
$і!
inputs         <
ф "%і"
unknown         ;@▒
B__inference_conv1d_5_layer_call_and_return_conditional_losses_4349k'(3б0
)б&
$і!
inputs         @
ф "0б-
&і#
tensor_0         @
џ І
'__inference_conv1d_5_layer_call_fn_4333`'(3б0
)б&
$і!
inputs         @
ф "%і"
unknown         @ф
A__inference_dense_3_layer_call_and_return_conditional_losses_4393e<=0б-
&б#
!і
inputs         ђ
ф "-б*
#і 
tensor_0         ђ
џ ё
&__inference_dense_3_layer_call_fn_4382Z<=0б-
&б#
!і
inputs         ђ
ф ""і
unknown         ђЕ
A__inference_dense_4_layer_call_and_return_conditional_losses_4413dDE0б-
&б#
!і
inputs         ђ
ф ",б)
"і
tensor_0         @
џ Ѓ
&__inference_dense_4_layer_call_fn_4402YDE0б-
&б#
!і
inputs         ђ
ф "!і
unknown         @е
A__inference_dense_5_layer_call_and_return_conditional_losses_4432cLM/б,
%б"
 і
inputs         @
ф ",б)
"і
tensor_0         
џ ѓ
&__inference_dense_5_layer_call_fn_4422XLM/б,
%б"
 і
inputs         @
ф "!і
unknown         Ф
C__inference_flatten_1_layer_call_and_return_conditional_losses_4373d3б0
)б&
$і!
inputs         @
ф "-б*
#і 
tensor_0         ђ
џ Ё
(__inference_flatten_1_layer_call_fn_4367Y3б0
)б&
$і!
inputs         @
ф ""і
unknown         ђ┘
I__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_4324ІEбB
;б8
6і3
inputs'                           
ф "Bб?
8і5
tensor_0'                           
џ │
.__inference_max_pooling1d_3_layer_call_fn_4316ђEбB
;б8
6і3
inputs'                           
ф "7і4
unknown'                           ┘
I__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4362ІEбB
;б8
6і3
inputs'                           
ф "Bб?
8і5
tensor_0'                           
џ │
.__inference_max_pooling1d_4_layer_call_fn_4354ђEбB
;б8
6і3
inputs'                           
ф "7і4
unknown'                           ╔
F__inference_sequential_1_layer_call_and_return_conditional_losses_4126
'(<=DELMCб@
9б6
,і)
conv1d_4_input         <
p

 
ф ",б)
"і
tensor_0         
џ ╔
F__inference_sequential_1_layer_call_and_return_conditional_losses_4158
'(<=DELMCб@
9б6
,і)
conv1d_4_input         <
p 

 
ф ",б)
"і
tensor_0         
џ Б
+__inference_sequential_1_layer_call_fn_4183t
'(<=DELMCб@
9б6
,і)
conv1d_4_input         <
p

 
ф "!і
unknown         Б
+__inference_sequential_1_layer_call_fn_4208t
'(<=DELMCб@
9б6
,і)
conv1d_4_input         <
p 

 
ф "!і
unknown         х
"__inference_signature_wrapper_4286ј
'(<=DELMMбJ
б 
Cф@
>
conv1d_4_input,і)
conv1d_4_input         <"1ф.
,
dense_5!і
dense_5         
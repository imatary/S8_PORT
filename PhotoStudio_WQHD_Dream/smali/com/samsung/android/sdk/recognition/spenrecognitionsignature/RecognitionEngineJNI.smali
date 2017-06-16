.class public Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;
.super Ljava/lang/Object;
.source "RecognitionEngineJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native FloatVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;F)V
.end method

.method public static final native FloatVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)J
.end method

.method public static final native FloatVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)V
.end method

.method public static final native FloatVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;I)F
.end method

.method public static final native FloatVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)Z
.end method

.method public static final native FloatVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;J)V
.end method

.method public static final native FloatVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;IF)V
.end method

.method public static final native FloatVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)J
.end method

.method public static final native PointFVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
.end method

.method public static final native PointFVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;)J
.end method

.method public static final native PointFVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;)V
.end method

.method public static final native PointFVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;I)J
.end method

.method public static final native PointFVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;)Z
.end method

.method public static final native PointFVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;J)V
.end method

.method public static final native PointFVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
.end method

.method public static final native PointFVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;)J
.end method

.method public static final native PointF_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)Z
.end method

.method public static final native PointF_getFarthestPointIndex(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;JJ)J
.end method

.method public static final native PointF_getX(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)F
.end method

.method public static final native PointF_getY(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)F
.end method

.method public static final native PointF_infinitePoint()J
.end method

.method public static final native PointF_isPointClose(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;F)Z
.end method

.method public static final native PointF_isValid(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)Z
.end method

.method public static final native PointF_setX(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;F)V
.end method

.method public static final native PointF_setY(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;F)V
.end method

.method public static final native SignatureEngine_clearModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;)V
.end method

.method public static final native SignatureEngine_getModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;)Ljava/lang/String;
.end method

.method public static final native SignatureEngine_getRegisteredCount(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;)I
.end method

.method public static final native SignatureEngine_initRegister(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;)V
.end method

.method public static final native SignatureEngine_signatureRegister(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z
.end method

.method public static final native SignatureEngine_verify(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;Ljava/lang/String;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z
.end method

.method public static final native Signature_add(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;)V
.end method

.method public static final native Signature_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)J
.end method

.method public static final native Signature_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)V
.end method

.method public static final native Signature_get(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;I)J
.end method

.method public static final native Signature_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z
.end method

.method public static final native Signature_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;J)V
.end method

.method public static final native Signature_set(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;IJLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;)V
.end method

.method public static final native Signature_size(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)J
.end method

.method public static final native Stroke_add(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)V
.end method

.method public static final native Stroke_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;)J
.end method

.method public static final native Stroke_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;)V
.end method

.method public static final native Stroke_get(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;I)J
.end method

.method public static final native Stroke_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;)Z
.end method

.method public static final native Stroke_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;J)V
.end method

.method public static final native Stroke_set(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;IJLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)V
.end method

.method public static final native Stroke_size(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Stroke;)J
.end method

.method public static final native TouchPoint_addBatch__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFFF)V
.end method

.method public static final native TouchPoint_addBatch__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFF)V
.end method

.method public static final native TouchPoint_addBatch__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DF)V
.end method

.method public static final native TouchPoint_addBatch__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;D)V
.end method

.method public static final native TouchPoint_addBatch__SWIG_4(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
.end method

.method public static final native TouchPoint_addHistoricalPoint__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFFF)V
.end method

.method public static final native TouchPoint_addHistoricalPoint__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFF)V
.end method

.method public static final native TouchPoint_addHistoricalPoint__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DF)V
.end method

.method public static final native TouchPoint_addHistoricalPoint__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;D)V
.end method

.method public static final native TouchPoint_addHistoricalPoint__SWIG_4(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
.end method

.method public static final native TouchPoint_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)Z
.end method

.method public static final native TouchPoint_getHistoricalOrientation(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F
.end method

.method public static final native TouchPoint_getHistoricalPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)J
.end method

.method public static final native TouchPoint_getHistoricalPressure(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F
.end method

.method public static final native TouchPoint_getHistoricalTilt(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F
.end method

.method public static final native TouchPoint_getHistoricalTimestamp(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)D
.end method

.method public static final native TouchPoint_getHistoricalX(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F
.end method

.method public static final native TouchPoint_getHistoricalY(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F
.end method

.method public static final native TouchPoint_getHistorySize(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)J
.end method

.method public static final native TouchPoint_getOrientation(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F
.end method

.method public static final native TouchPoint_getPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)J
.end method

.method public static final native TouchPoint_getPressure(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F
.end method

.method public static final native TouchPoint_getTilt(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F
.end method

.method public static final native TouchPoint_getTimestamp(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)D
.end method

.method public static final native TouchPoint_getX(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F
.end method

.method public static final native TouchPoint_getY(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F
.end method

.method public static final native TouchPoint_setHistoricalPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JJLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
.end method

.method public static final native TouchPoint_setOrientation(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;F)V
.end method

.method public static final native TouchPoint_setPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
.end method

.method public static final native TouchPoint_setPressure(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;F)V
.end method

.method public static final native TouchPoint_setTilt(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;F)V
.end method

.method public static final native TouchPoint_setTimestamp(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;D)V
.end method

.method public static final native Trainer_MAX_SIGNATURES_AMOUNT_get()I
.end method

.method public static final native Trainer_MIN_NUMBER_OF_POINTS_IN_SIGNATURE_get()I
.end method

.method public static final native Trainer_MIN_SIGNATURES_AMOUNT_get()I
.end method

.method public static final native Trainer_addSignature(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)I
.end method

.method public static final native Trainer_getSignaturesNumber(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)J
.end method

.method public static final native Trainer_getSimplicityLevel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)I
.end method

.method public static final native Trainer_getValidateNextSignature(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)Z
.end method

.method public static final native Trainer_isSimplicityChecking(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)Z
.end method

.method public static final native Trainer_setSimplicityChecking(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;Z)V
.end method

.method public static final native Trainer_setSimplicityLevel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;I)V
.end method

.method public static final native Trainer_setValidateNextSignature(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;Z)V
.end method

.method public static final native Trainer_trainModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)J
.end method

.method public static final native UInt32Vector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;J)V
.end method

.method public static final native UInt32Vector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;)J
.end method

.method public static final native UInt32Vector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;)V
.end method

.method public static final native UInt32Vector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;I)J
.end method

.method public static final native UInt32Vector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;)Z
.end method

.method public static final native UInt32Vector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;J)V
.end method

.method public static final native UInt32Vector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;IJ)V
.end method

.method public static final native UInt32Vector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;)J
.end method

.method public static final native UserModelReader_read__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModelReader;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)Z
.end method

.method public static final native UserModelReader_read__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModelReader;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;)Z
.end method

.method public static final native UserModelStringReader_SWIGUpcast(J)J
.end method

.method public static final native UserModelStringWriter_SWIGUpcast(J)J
.end method

.method public static final native UserModelStringWriter_getString(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModelStringWriter;)Ljava/lang/String;
.end method

.method public static final native UserModelWriter_write__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModelWriter;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)Z
.end method

.method public static final native UserModelWriter_write__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModelWriter;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UInt32Vector;)Z
.end method

.method public static final native UserModel_getSignaturesNumber(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)J
.end method

.method public static final native UserModel_isValid(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)Z
.end method

.method public static final native UserModel_readModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModelReader;)J
.end method

.method public static final native UserModel_writeModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModelWriter;)Z
.end method

.method public static final native VectorPointFVectors_add(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/VectorPointFVectors;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;)V
.end method

.method public static final native VectorPointFVectors_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/VectorPointFVectors;)J
.end method

.method public static final native VectorPointFVectors_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/VectorPointFVectors;)V
.end method

.method public static final native VectorPointFVectors_get(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/VectorPointFVectors;I)J
.end method

.method public static final native VectorPointFVectors_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/VectorPointFVectors;)Z
.end method

.method public static final native VectorPointFVectors_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/VectorPointFVectors;J)V
.end method

.method public static final native VectorPointFVectors_set(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/VectorPointFVectors;IJLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointFVector;)V
.end method

.method public static final native VectorPointFVectors_size(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/VectorPointFVectors;)J
.end method

.method public static final native Verifier_getModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)J
.end method

.method public static final native Verifier_getStrictnessLevel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)I
.end method

.method public static final native Verifier_isAddExtraSignatures(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)Z
.end method

.method public static final native Verifier_isAddExtraSignaturesToFullModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)Z
.end method

.method public static final native Verifier_isAuthentic(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z
.end method

.method public static final native Verifier_isModelChanged(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)Z
.end method

.method public static final native Verifier_setAddExtraSignatures(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;Z)V
.end method

.method public static final native Verifier_setAddExtraSignaturesToFullModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;Z)V
.end method

.method public static final native Verifier_setStrictnessLevel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;I)V
.end method

.method public static final native delete_FloatVector(J)V
.end method

.method public static final native delete_PointF(J)V
.end method

.method public static final native delete_PointFVector(J)V
.end method

.method public static final native delete_Signature(J)V
.end method

.method public static final native delete_SignatureEngine(J)V
.end method

.method public static final native delete_Stroke(J)V
.end method

.method public static final native delete_TouchPoint(J)V
.end method

.method public static final native delete_Trainer(J)V
.end method

.method public static final native delete_UInt32Vector(J)V
.end method

.method public static final native delete_UserModel(J)V
.end method

.method public static final native delete_UserModelReader(J)V
.end method

.method public static final native delete_UserModelStringReader(J)V
.end method

.method public static final native delete_UserModelStringWriter(J)V
.end method

.method public static final native delete_UserModelWriter(J)V
.end method

.method public static final native delete_VectorPointFVectors(J)V
.end method

.method public static final native delete_Verifier(J)V
.end method

.method public static final native new_FloatVector__SWIG_0()J
.end method

.method public static final native new_FloatVector__SWIG_1(J)J
.end method

.method public static final native new_PointFVector__SWIG_0()J
.end method

.method public static final native new_PointFVector__SWIG_1(J)J
.end method

.method public static final native new_PointF__SWIG_0()J
.end method

.method public static final native new_PointF__SWIG_1(FF)J
.end method

.method public static final native new_SignatureEngine()J
.end method

.method public static final native new_Signature__SWIG_0()J
.end method

.method public static final native new_Signature__SWIG_1(J)J
.end method

.method public static final native new_Stroke__SWIG_0()J
.end method

.method public static final native new_Stroke__SWIG_1(J)J
.end method

.method public static final native new_TouchPoint__SWIG_0()J
.end method

.method public static final native new_TouchPoint__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DF)J
.end method

.method public static final native new_TouchPoint__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;D)J
.end method

.method public static final native new_TouchPoint__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J
.end method

.method public static final native new_TouchPoint__SWIG_4(FFDF)J
.end method

.method public static final native new_TouchPoint__SWIG_5(FFD)J
.end method

.method public static final native new_TouchPoint__SWIG_6(FF)J
.end method

.method public static final native new_Trainer__SWIG_0()J
.end method

.method public static final native new_Trainer__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)J
.end method

.method public static final native new_UInt32Vector__SWIG_0()J
.end method

.method public static final native new_UInt32Vector__SWIG_1(J)J
.end method

.method public static final native new_UserModelStringReader(Ljava/lang/String;)J
.end method

.method public static final native new_UserModelStringWriter()J
.end method

.method public static final native new_UserModel__SWIG_0()J
.end method

.method public static final native new_UserModel__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)J
.end method

.method public static final native new_VectorPointFVectors__SWIG_0()J
.end method

.method public static final native new_VectorPointFVectors__SWIG_1(J)J
.end method

.method public static final native new_Verifier(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)J
.end method

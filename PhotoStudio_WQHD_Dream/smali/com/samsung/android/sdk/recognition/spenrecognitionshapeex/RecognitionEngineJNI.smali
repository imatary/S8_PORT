.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;
.super Ljava/lang/Object;
.source "RecognitionEngineJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->swig_module_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native ConnectorInfoVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfoVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)V
.end method

.method public static final native ConnectorInfoVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfoVector;)J
.end method

.method public static final native ConnectorInfoVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfoVector;)V
.end method

.method public static final native ConnectorInfoVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfoVector;I)J
.end method

.method public static final native ConnectorInfoVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfoVector;)Z
.end method

.method public static final native ConnectorInfoVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfoVector;J)V
.end method

.method public static final native ConnectorInfoVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfoVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)V
.end method

.method public static final native ConnectorInfoVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfoVector;)J
.end method

.method public static final native ConnectorInfo_getBeginPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J
.end method

.method public static final native ConnectorInfo_getBeginPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)I
.end method

.method public static final native ConnectorInfo_getBendPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J
.end method

.method public static final native ConnectorInfo_getConnectorType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)I
.end method

.method public static final native ConnectorInfo_getEndPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J
.end method

.method public static final native ConnectorInfo_getEndPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)I
.end method

.method public static final native ConnectorInfo_removeBendPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;J)V
.end method

.method public static final native ConnectorInfo_setBeginPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
.end method

.method public static final native ConnectorInfo_setBeginPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;I)V
.end method

.method public static final native ConnectorInfo_setBendPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
.end method

.method public static final native ConnectorInfo_setEndPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
.end method

.method public static final native ConnectorInfo_setEndPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;I)V
.end method

.method public static final native ConnectorRecognitionResultVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResultVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)V
.end method

.method public static final native ConnectorRecognitionResultVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResultVector;)J
.end method

.method public static final native ConnectorRecognitionResultVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResultVector;)V
.end method

.method public static final native ConnectorRecognitionResultVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResultVector;I)J
.end method

.method public static final native ConnectorRecognitionResultVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResultVector;)Z
.end method

.method public static final native ConnectorRecognitionResultVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResultVector;J)V
.end method

.method public static final native ConnectorRecognitionResultVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResultVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)V
.end method

.method public static final native ConnectorRecognitionResultVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResultVector;)J
.end method

.method public static final native ConnectorRecognitionResult_getConnectorInfo__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)J
.end method

.method public static final native ConnectorRecognitionResult_getIndexesOfGestures__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)J
.end method

.method public static final native ConnectorRecognizer_recognize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognizer;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;F)J
.end method

.method public static final native FloatPair_first_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;)F
.end method

.method public static final native FloatPair_first_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;F)V
.end method

.method public static final native FloatPair_second_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;)F
.end method

.method public static final native FloatPair_second_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;F)V
.end method

.method public static final native LineF_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Z
.end method

.method public static final native LineF_containsPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Z
.end method

.method public static final native LineF_cos(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F
.end method

.method public static final native LineF_directLineFromPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J
.end method

.method public static final native LineF_extendLine__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;FI)J
.end method

.method public static final native LineF_extendLine__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;F)J
.end method

.method public static final native LineF_getA(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F
.end method

.method public static final native LineF_getB(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F
.end method

.method public static final native LineF_getBoundingBox(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J
.end method

.method public static final native LineF_getC(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F
.end method

.method public static final native LineF_getCrossPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J
.end method

.method public static final native LineF_getDistanceFromSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J
.end method

.method public static final native LineF_getDistanceToSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
.end method

.method public static final native LineF_getEndPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J
.end method

.method public static final native LineF_getFarthestPointIndex(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;JJ)J
.end method

.method public static final native LineF_getHalfPlaneIndex(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)I
.end method

.method public static final native LineF_getLength(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F
.end method

.method public static final native LineF_getMiddlePoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J
.end method

.method public static final native LineF_getModuleAB(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F
.end method

.method public static final native LineF_getOverlappedLineSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J
.end method

.method public static final native LineF_getParallelLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J
.end method

.method public static final native LineF_getPerpendicularLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J
.end method

.method public static final native LineF_getPointProjection(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J
.end method

.method public static final native LineF_getPointRelfection(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J
.end method

.method public static final native LineF_getPointsRelfection(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J
.end method

.method public static final native LineF_getRevertLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J
.end method

.method public static final native LineF_getSignedDistanceToPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
.end method

.method public static final native LineF_getSquareDistanceToSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
.end method

.method public static final native LineF_getSquareLength(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F
.end method

.method public static final native LineF_getStartPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J
.end method

.method public static final native LineF_hasIntersection(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Z
.end method

.method public static final native LineF_isLineContinueLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;F)Z
.end method

.method public static final native LineF_isPointLocalToLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z
.end method

.method public static final native LineF_isPointLocalToSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z
.end method

.method public static final native LineF_isPointOnEnd(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z
.end method

.method public static final native LineF_isValid(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Z
.end method

.method public static final native LineF_revert(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)V
.end method

.method public static final native LineF_squareDistanceToLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
.end method

.method public static final native LinesFVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)V
.end method

.method public static final native LinesFVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;)J
.end method

.method public static final native LinesFVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;)V
.end method

.method public static final native LinesFVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;I)J
.end method

.method public static final native LinesFVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;)Z
.end method

.method public static final native LinesFVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;J)V
.end method

.method public static final native LinesFVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)V
.end method

.method public static final native LinesFVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;)J
.end method

.method public static final native PathSegmentVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)V
.end method

.method public static final native PathSegmentVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;)J
.end method

.method public static final native PathSegmentVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;)V
.end method

.method public static final native PathSegmentVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;I)J
.end method

.method public static final native PathSegmentVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;)Z
.end method

.method public static final native PathSegmentVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;J)V
.end method

.method public static final native PathSegmentVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)V
.end method

.method public static final native PathSegmentVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;)J
.end method

.method public static final native PathSegment_TYPE_ARCTO_get()I
.end method

.method public static final native PathSegment_TYPE_CLOSE_get()I
.end method

.method public static final native PathSegment_TYPE_CUBICTO_get()I
.end method

.method public static final native PathSegment_TYPE_LINETO_get()I
.end method

.method public static final native PathSegment_TYPE_MOVETO_get()I
.end method

.method public static final native PathSegment_TYPE_QUADTO_get()I
.end method

.method public static final native PathSegment_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)Z
.end method

.method public static final native PathSegment_type_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)I
.end method

.method public static final native PathSegment_type_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;I)V
.end method

.method public static final native PathSegment_x1_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F
.end method

.method public static final native PathSegment_x1_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V
.end method

.method public static final native PathSegment_x2_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F
.end method

.method public static final native PathSegment_x2_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V
.end method

.method public static final native PathSegment_x_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F
.end method

.method public static final native PathSegment_x_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V
.end method

.method public static final native PathSegment_y1_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F
.end method

.method public static final native PathSegment_y1_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V
.end method

.method public static final native PathSegment_y2_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F
.end method

.method public static final native PathSegment_y2_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V
.end method

.method public static final native PathSegment_y_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F
.end method

.method public static final native PathSegment_y_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V
.end method

.method public static final native PointFVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
.end method

.method public static final native PointFVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J
.end method

.method public static final native PointFVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
.end method

.method public static final native PointFVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;I)J
.end method

.method public static final native PointFVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)Z
.end method

.method public static final native PointFVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;J)V
.end method

.method public static final native PointFVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
.end method

.method public static final native PointFVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J
.end method

.method public static final native PointF_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Z
.end method

.method public static final native PointF_getFarthestPointIndex(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;JJ)J
.end method

.method public static final native PointF_getX(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
.end method

.method public static final native PointF_getY(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
.end method

.method public static final native PointF_infinitePoint()J
.end method

.method public static final native PointF_isPointClose(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z
.end method

.method public static final native PointF_isValid(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Z
.end method

.method public static final native PointF_setX(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)V
.end method

.method public static final native PointF_setY(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)V
.end method

.method public static final native PolylineSmoother_linearize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;FFF)J
.end method

.method public static final native PolylineSmoother_smoothPolyline(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J
.end method

.method public static final native RecognitionContext_getPPI(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)F
.end method

.method public static final native RecognitionContext_getRecognitionMode(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)I
.end method

.method public static final native RecognitionContext_isShapeAvailable(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;I)Z
.end method

.method public static final native RecognitionContext_shouldRecognize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;I)Z
.end method

.method public static final native RecognitionResultVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)V
.end method

.method public static final native RecognitionResultVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;)J
.end method

.method public static final native RecognitionResultVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;)V
.end method

.method public static final native RecognitionResultVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;I)J
.end method

.method public static final native RecognitionResultVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;)Z
.end method

.method public static final native RecognitionResultVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;J)V
.end method

.method public static final native RecognitionResultVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)V
.end method

.method public static final native RecognitionResultVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;)J
.end method

.method public static final native RecognitionResult_getIndexesOfGestures(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)J
.end method

.method public static final native RecognitionResult_getShapeInfos__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)J
.end method

.method public static final native RectF_areOverlap(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)Z
.end method

.method public static final native RectF_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)Z
.end method

.method public static final native RectF_containsPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Z
.end method

.method public static final native RectF_extendBounds(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;F)J
.end method

.method public static final native RectF_getHeight(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)F
.end method

.method public static final native RectF_getLeftTop(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J
.end method

.method public static final native RectF_getRightBottom(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J
.end method

.method public static final native RectF_getWidth(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)F
.end method

.method public static final native RectF_isValid(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)Z
.end method

.method public static final native RectF_makeRect__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J
.end method

.method public static final native RectF_makeRect__SWIG_1(FFFF)J
.end method

.method public static final native RectF_mergeBounds(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J
.end method

.method public static final native SceneAlignSettings_polygonAngle_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;)F
.end method

.method public static final native SceneAlignSettings_polygonAngle_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;F)V
.end method

.method public static final native SceneAlignSettings_polylineAngle_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;)F
.end method

.method public static final native SceneAlignSettings_polylineAngle_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;F)V
.end method

.method public static final native SceneAlignSettings_shapeAngle_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;)F
.end method

.method public static final native SceneAlignSettings_shapeAngle_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;F)V
.end method

.method public static final native SceneAlignSettings_snapDelta_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;)F
.end method

.method public static final native SceneAlignSettings_snapDelta_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;F)V
.end method

.method public static final native SceneBeautifierSettings_alignSettings_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J
.end method

.method public static final native SceneBeautifierSettings_alignSettings_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;)V
.end method

.method public static final native SceneBeautifierSettings_circumscriberSettings_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J
.end method

.method public static final native SceneBeautifierSettings_circumscriberSettings_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)V
.end method

.method public static final native SceneBeautifierSettings_connectorSettings_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J
.end method

.method public static final native SceneBeautifierSettings_connectorSettings_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;)V
.end method

.method public static final native SceneBeautifierSettings_linkerSettings_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J
.end method

.method public static final native SceneBeautifierSettings_linkerSettings_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;)V
.end method

.method public static final native SceneBeautifier_PROCESS_ADJUSTING_get()I
.end method

.method public static final native SceneBeautifier_PROCESS_ALL_get()I
.end method

.method public static final native SceneBeautifier_PROCESS_CIRCUMSCRIBING_get()I
.end method

.method public static final native SceneBeautifier_PROCESS_CONNECTOR_AXIS_ADJUSTING_get()I
.end method

.method public static final native SceneBeautifier_PROCESS_LINKING_get()I
.end method

.method public static final native SceneBeautifier_PROCESS_SHAPE_AXIS_ADJUSTING_get()I
.end method

.method public static final native SceneBeautifier_PROCESS_STANDARTIZE_get()I
.end method

.method public static final native SceneBeautifier_processShapeAdjustingToAxis(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
.end method

.method public static final native SceneBeautifier_processShapeAligning(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
.end method

.method public static final native SceneBeautifier_processShapeCircumscribing(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
.end method

.method public static final native SceneBeautifier_processShapeLinking(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
.end method

.method public static final native SceneBeautifier_processShapeStandardize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
.end method

.method public static final native SceneBeautifier_process__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;J)Z
.end method

.method public static final native SceneBeautifier_process__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
.end method

.method public static final native SceneCircumscriberSettings_maxAxesAngle_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)F
.end method

.method public static final native SceneCircumscriberSettings_maxAxesAngle_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;F)V
.end method

.method public static final native SceneCircumscriberSettings_maxCentroidsDistance_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)F
.end method

.method public static final native SceneCircumscriberSettings_maxCentroidsDistance_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;F)V
.end method

.method public static final native SceneCircumscriberSettings_maxLengthsDiffEllipseAndShape_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)F
.end method

.method public static final native SceneCircumscriberSettings_maxLengthsDiffEllipseAndShape_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;F)V
.end method

.method public static final native SceneCircumscriberSettings_maxRadiusRatio_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)F
.end method

.method public static final native SceneCircumscriberSettings_maxRadiusRatio_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;F)V
.end method

.method public static final native SceneCircumscriberSettings_maxRelativeCenterDistance_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)F
.end method

.method public static final native SceneCircumscriberSettings_maxRelativeCenterDistance_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;F)V
.end method

.method public static final native SceneCircumscriberSettings_minRadiusRatio_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)F
.end method

.method public static final native SceneCircumscriberSettings_minRadiusRatio_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;F)V
.end method

.method public static final native SceneConnectorSettings_arrowSize_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;)F
.end method

.method public static final native SceneConnectorSettings_arrowSize_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;F)V
.end method

.method public static final native SceneConverter_convert2Strokes__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J
.end method

.method public static final native SceneConverter_convert2Strokes__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;J)J
.end method

.method public static final native SceneLinkerSettings_maxConnectionDistance_LinePoint_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;)F
.end method

.method public static final native SceneLinkerSettings_maxConnectionDistance_LinePoint_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;F)V
.end method

.method public static final native SceneLinkerSettings_maxConnectionDistance_MiddlePoint_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;)F
.end method

.method public static final native SceneLinkerSettings_maxConnectionDistance_MiddlePoint_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;F)V
.end method

.method public static final native SceneLinkerSettings_maxConnectionDistance_VertexPoint_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;)F
.end method

.method public static final native SceneLinkerSettings_maxConnectionDistance_VertexPoint_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;F)V
.end method

.method public static final native SceneObjectConnector_SWIGUpcast(J)J
.end method

.method public static final native SceneObjectConnector_getConnectorInfo(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectConnector;)J
.end method

.method public static final native SceneObjectPolygon_SWIGUpcast(J)J
.end method

.method public static final native SceneObjectPolygon_getPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolygon;)J
.end method

.method public static final native SceneObjectPolyline_SWIGUpcast(J)J
.end method

.method public static final native SceneObjectPolyline_getPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolyline;)J
.end method

.method public static final native SceneObjectShape_SWIGUpcast(J)J
.end method

.method public static final native SceneObjectShape_getShapeInfo(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectShape;)J
.end method

.method public static final native SceneObjectVisitor_change_ownership(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JZ)V
.end method

.method public static final native SceneObjectVisitor_director_connect(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JZZ)V
.end method

.method public static final native SceneObjectVisitor_visit__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectShape;)V
.end method

.method public static final native SceneObjectVisitor_visit__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolyline;)V
.end method

.method public static final native SceneObjectVisitor_visit__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolygon;)V
.end method

.method public static final native SceneObjectVisitor_visit__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectConnector;)V
.end method

.method public static final native SceneObject_accept(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObject;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;)V
.end method

.method public static final native SceneObject_getStrokeStyle(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObject;)J
.end method

.method public static final native SceneRecognizer_SceneRecognitionMode_Connectors_get()I
.end method

.method public static final native SceneRecognizer_SceneRecognitionMode_None_get()I
.end method

.method public static final native SceneRecognizer_SceneRecognitionMode_ShapesAndConnectors_get()I
.end method

.method public static final native SceneRecognizer_SceneRecognitionMode_Shapes_get()I
.end method

.method public static final native SceneRecognizer_recognize__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;J)Z
.end method

.method public static final native SceneRecognizer_recognize__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)Z
.end method

.method public static final native SceneStrokeStyle_getColor(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)I
.end method

.method public static final native SceneStrokeStyle_getPen(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)I
.end method

.method public static final native SceneStrokeStyle_getWidth(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)F
.end method

.method public static final native SceneStrokeStyle_setColor(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;I)V
.end method

.method public static final native SceneStrokeStyle_setPen(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;I)V
.end method

.method public static final native SceneStrokeStyle_setWidth(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;F)V
.end method

.method public static final native SceneStrokeVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;)V
.end method

.method public static final native SceneStrokeVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;)J
.end method

.method public static final native SceneStrokeVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;)V
.end method

.method public static final native SceneStrokeVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;I)J
.end method

.method public static final native SceneStrokeVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;)Z
.end method

.method public static final native SceneStrokeVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;J)V
.end method

.method public static final native SceneStrokeVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;)V
.end method

.method public static final native SceneStrokeVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;)J
.end method

.method public static final native SceneStroke_points_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;)J
.end method

.method public static final native SceneStroke_points_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
.end method

.method public static final native SceneStroke_style_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;)J
.end method

.method public static final native SceneStroke_style_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)V
.end method

.method public static final native Scene_addConnectorObject__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)J
.end method

.method public static final native Scene_addConnectorObject__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J
.end method

.method public static final native Scene_addPolygonObject__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)J
.end method

.method public static final native Scene_addPolygonObject__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J
.end method

.method public static final native Scene_addPolylineObject__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)J
.end method

.method public static final native Scene_addPolylineObject__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J
.end method

.method public static final native Scene_addShapeObject__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)J
.end method

.method public static final native Scene_addShapeObject__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J
.end method

.method public static final native Scene_getChildAtIndex(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;J)J
.end method

.method public static final native Scene_getChildCount(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J
.end method

.method public static final native ShapeInfoVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)V
.end method

.method public static final native ShapeInfoVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;)J
.end method

.method public static final native ShapeInfoVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;)V
.end method

.method public static final native ShapeInfoVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;I)J
.end method

.method public static final native ShapeInfoVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;)Z
.end method

.method public static final native ShapeInfoVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;J)V
.end method

.method public static final native ShapeInfoVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)V
.end method

.method public static final native ShapeInfoVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;)J
.end method

.method public static final native ShapeInfo_DefaultRelevance_get()F
.end method

.method public static final native ShapeInfo_adjustToAxis__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;F)Z
.end method

.method public static final native ShapeInfo_adjustToAxis__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z
.end method

.method public static final native ShapeInfo_angle(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)F
.end method

.method public static final native ShapeInfo_clone(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J
.end method

.method public static final native ShapeInfo_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z
.end method

.method public static final native ShapeInfo_generatePoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;J)J
.end method

.method public static final native ShapeInfo_getBounds(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J
.end method

.method public static final native ShapeInfo_getRecognizedPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J
.end method

.method public static final native ShapeInfo_getRecognizedPointsByRef(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J
.end method

.method public static final native ShapeInfo_getRelevance(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)F
.end method

.method public static final native ShapeInfo_getShapeType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)I
.end method

.method public static final native ShapeInfo_getTrace(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Ljava/lang/String;
.end method

.method public static final native ShapeInfo_isClosedShape(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z
.end method

.method public static final native ShapeInfo_isComplexShape(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z
.end method

.method public static final native ShapeInfo_isValid(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z
.end method

.method public static final native ShapeInfo_nameByType(I)Ljava/lang/String;
.end method

.method public static final native ShapeInfo_setAngle(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;FJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
.end method

.method public static final native ShapeInfo_setRecognizedPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
.end method

.method public static final native ShapeInfo_setRelevance(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;F)V
.end method

.method public static final native ShapeInfo_setTrace(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;Ljava/lang/String;)V
.end method

.method public static final native ShapeInfo_shapeTypeToString(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Ljava/lang/String;
.end method

.method public static final native ShapePathVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePathVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)V
.end method

.method public static final native ShapePathVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePathVector;)J
.end method

.method public static final native ShapePathVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePathVector;)V
.end method

.method public static final native ShapePathVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePathVector;I)J
.end method

.method public static final native ShapePathVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePathVector;)Z
.end method

.method public static final native ShapePathVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePathVector;J)V
.end method

.method public static final native ShapePathVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePathVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)V
.end method

.method public static final native ShapePathVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePathVector;)J
.end method

.method public static final native ShapePath_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)Z
.end method

.method public static final native ShapePath_getAngleOfShape(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)F
.end method

.method public static final native ShapePath_getBeginPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)I
.end method

.method public static final native ShapePath_getBounds(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J
.end method

.method public static final native ShapePath_getEndPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)I
.end method

.method public static final native ShapePath_getPathSegments(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J
.end method

.method public static final native ShapePath_getType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)I
.end method

.method public static final native ShapePath_getTypeString(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)Ljava/lang/String;
.end method

.method public static final native ShapePath_swap(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)V
.end method

.method public static final native ShapeRecognizerExternal_getIndexesOfStrokesForShapePath(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerExternal;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J
.end method

.method public static final native ShapeRecognizerExternal_getPPI(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerExternal;)F
.end method

.method public static final native ShapeRecognizerExternal_recognize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerExternal;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;)J
.end method

.method public static final native ShapeRecognizerExternal_setPPI(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerExternal;F)V
.end method

.method public static final native ShapeRecognizerV2_recognize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)J
.end method

.method public static final native ShapeTypeVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;I)V
.end method

.method public static final native ShapeTypeVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;)J
.end method

.method public static final native ShapeTypeVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;)V
.end method

.method public static final native ShapeTypeVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;I)I
.end method

.method public static final native ShapeTypeVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;)Z
.end method

.method public static final native ShapeTypeVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;J)V
.end method

.method public static final native ShapeTypeVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;II)V
.end method

.method public static final native ShapeTypeVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;)J
.end method

.method public static final native SizeTVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;J)V
.end method

.method public static final native SizeTVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;)J
.end method

.method public static final native SizeTVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;)V
.end method

.method public static final native SizeTVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;I)J
.end method

.method public static final native SizeTVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;)Z
.end method

.method public static final native SizeTVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;J)V
.end method

.method public static final native SizeTVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;IJ)V
.end method

.method public static final native SizeTVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;)J
.end method

.method public static final native StringVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/StringVector;Ljava/lang/String;)V
.end method

.method public static final native StringVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/StringVector;)J
.end method

.method public static final native StringVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/StringVector;)V
.end method

.method public static final native StringVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/StringVector;I)Ljava/lang/String;
.end method

.method public static final native StringVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/StringVector;)Z
.end method

.method public static final native StringVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/StringVector;J)V
.end method

.method public static final native StringVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/StringVector;ILjava/lang/String;)V
.end method

.method public static final native StringVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/StringVector;)J
.end method

.method public static SwigDirector_SceneObjectVisitor_visit__SWIG_0(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;J)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectShape;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectShape;-><init>(JZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->visit(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectShape;)V

    return-void
.end method

.method public static SwigDirector_SceneObjectVisitor_visit__SWIG_1(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;J)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolyline;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolyline;-><init>(JZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->visit(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolyline;)V

    return-void
.end method

.method public static SwigDirector_SceneObjectVisitor_visit__SWIG_2(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;J)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolygon;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolygon;-><init>(JZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->visit(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolygon;)V

    return-void
.end method

.method public static SwigDirector_SceneObjectVisitor_visit__SWIG_3(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;J)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectConnector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectConnector;-><init>(JZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->visit(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectConnector;)V

    return-void
.end method

.method public static final native TypeVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;I)V
.end method

.method public static final native TypeVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;)J
.end method

.method public static final native TypeVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;)V
.end method

.method public static final native TypeVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;I)I
.end method

.method public static final native TypeVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;)Z
.end method

.method public static final native TypeVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;J)V
.end method

.method public static final native TypeVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;II)V
.end method

.method public static final native TypeVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;)J
.end method

.method public static final native VectorPointFVectors_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
.end method

.method public static final native VectorPointFVectors_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;)J
.end method

.method public static final native VectorPointFVectors_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;)V
.end method

.method public static final native VectorPointFVectors_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;I)J
.end method

.method public static final native VectorPointFVectors_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;)Z
.end method

.method public static final native VectorPointFVectors_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;J)V
.end method

.method public static final native VectorPointFVectors_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
.end method

.method public static final native VectorPointFVectors_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;)J
.end method

.method public static final native VectorSceneStrokeVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorSceneStrokeVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;)V
.end method

.method public static final native VectorSceneStrokeVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorSceneStrokeVector;)J
.end method

.method public static final native VectorSceneStrokeVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorSceneStrokeVector;)V
.end method

.method public static final native VectorSceneStrokeVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorSceneStrokeVector;I)J
.end method

.method public static final native VectorSceneStrokeVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorSceneStrokeVector;)Z
.end method

.method public static final native VectorSceneStrokeVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorSceneStrokeVector;J)V
.end method

.method public static final native VectorSceneStrokeVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorSceneStrokeVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;)V
.end method

.method public static final native VectorSceneStrokeVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorSceneStrokeVector;)J
.end method

.method public static final native VectorShapeInfoVectors_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorShapeInfoVectors;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;)V
.end method

.method public static final native VectorShapeInfoVectors_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorShapeInfoVectors;)J
.end method

.method public static final native VectorShapeInfoVectors_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorShapeInfoVectors;)V
.end method

.method public static final native VectorShapeInfoVectors_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorShapeInfoVectors;I)J
.end method

.method public static final native VectorShapeInfoVectors_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorShapeInfoVectors;)Z
.end method

.method public static final native VectorShapeInfoVectors_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorShapeInfoVectors;J)V
.end method

.method public static final native VectorShapeInfoVectors_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorShapeInfoVectors;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;)V
.end method

.method public static final native VectorShapeInfoVectors_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorShapeInfoVectors;)J
.end method

.method public static final native delete_ConnectorInfo(J)V
.end method

.method public static final native delete_ConnectorInfoVector(J)V
.end method

.method public static final native delete_ConnectorRecognitionResult(J)V
.end method

.method public static final native delete_ConnectorRecognitionResultVector(J)V
.end method

.method public static final native delete_ConnectorRecognizer(J)V
.end method

.method public static final native delete_FloatPair(J)V
.end method

.method public static final native delete_LineF(J)V
.end method

.method public static final native delete_LinesFVector(J)V
.end method

.method public static final native delete_PathSegment(J)V
.end method

.method public static final native delete_PathSegmentVector(J)V
.end method

.method public static final native delete_PointF(J)V
.end method

.method public static final native delete_PointFVector(J)V
.end method

.method public static final native delete_PolylineSmoother(J)V
.end method

.method public static final native delete_RecognitionContext(J)V
.end method

.method public static final native delete_RecognitionResult(J)V
.end method

.method public static final native delete_RecognitionResultVector(J)V
.end method

.method public static final native delete_RectF(J)V
.end method

.method public static final native delete_Scene(J)V
.end method

.method public static final native delete_SceneAlignSettings(J)V
.end method

.method public static final native delete_SceneBeautifier(J)V
.end method

.method public static final native delete_SceneBeautifierSettings(J)V
.end method

.method public static final native delete_SceneCircumscriberSettings(J)V
.end method

.method public static final native delete_SceneConnectorSettings(J)V
.end method

.method public static final native delete_SceneConverter(J)V
.end method

.method public static final native delete_SceneLinkerSettings(J)V
.end method

.method public static final native delete_SceneObject(J)V
.end method

.method public static final native delete_SceneObjectConnector(J)V
.end method

.method public static final native delete_SceneObjectPolygon(J)V
.end method

.method public static final native delete_SceneObjectPolyline(J)V
.end method

.method public static final native delete_SceneObjectShape(J)V
.end method

.method public static final native delete_SceneObjectVisitor(J)V
.end method

.method public static final native delete_SceneRecognizer(J)V
.end method

.method public static final native delete_SceneStroke(J)V
.end method

.method public static final native delete_SceneStrokeStyle(J)V
.end method

.method public static final native delete_SceneStrokeVector(J)V
.end method

.method public static final native delete_ShapeInfo(J)V
.end method

.method public static final native delete_ShapeInfoVector(J)V
.end method

.method public static final native delete_ShapePath(J)V
.end method

.method public static final native delete_ShapePathVector(J)V
.end method

.method public static final native delete_ShapeRecognizerExternal(J)V
.end method

.method public static final native delete_ShapeRecognizerV2(J)V
.end method

.method public static final native delete_ShapeTypeVector(J)V
.end method

.method public static final native delete_SizeTVector(J)V
.end method

.method public static final native delete_StringVector(J)V
.end method

.method public static final native delete_TypeVector(J)V
.end method

.method public static final native delete_VectorPointFVectors(J)V
.end method

.method public static final native delete_VectorSceneStrokeVector(J)V
.end method

.method public static final native delete_VectorShapeInfoVectors(J)V
.end method

.method public static final native new_ConnectorInfoVector__SWIG_0()J
.end method

.method public static final native new_ConnectorInfoVector__SWIG_1(J)J
.end method

.method public static final native new_ConnectorInfo__SWIG_0()J
.end method

.method public static final native new_ConnectorInfo__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J
.end method

.method public static final native new_ConnectorInfo__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;II)J
.end method

.method public static final native new_ConnectorInfo__SWIG_3(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;IIJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J
.end method

.method public static final native new_ConnectorInfo__SWIG_4(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J
.end method

.method public static final native new_ConnectorRecognitionResultVector__SWIG_0()J
.end method

.method public static final native new_ConnectorRecognitionResultVector__SWIG_1(J)J
.end method

.method public static final native new_ConnectorRecognitionResult__SWIG_0()J
.end method

.method public static final native new_ConnectorRecognitionResult__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;)J
.end method

.method public static final native new_ConnectorRecognitionResult__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)J
.end method

.method public static final native new_ConnectorRecognizer()J
.end method

.method public static final native new_FloatPair__SWIG_0()J
.end method

.method public static final native new_FloatPair__SWIG_1(FF)J
.end method

.method public static final native new_FloatPair__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;)J
.end method

.method public static final native new_LineF__SWIG_0()J
.end method

.method public static final native new_LineF__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J
.end method

.method public static final native new_LinesFVector__SWIG_0()J
.end method

.method public static final native new_LinesFVector__SWIG_1(J)J
.end method

.method public static final native new_PathSegmentVector__SWIG_0()J
.end method

.method public static final native new_PathSegmentVector__SWIG_1(J)J
.end method

.method public static final native new_PathSegment__SWIG_0()J
.end method

.method public static final native new_PathSegment__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)J
.end method

.method public static final native new_PointFVector__SWIG_0()J
.end method

.method public static final native new_PointFVector__SWIG_1(J)J
.end method

.method public static final native new_PointF__SWIG_0()J
.end method

.method public static final native new_PointF__SWIG_1(FF)J
.end method

.method public static final native new_PolylineSmoother()J
.end method

.method public static final native new_RecognitionContext__SWIG_0(F)J
.end method

.method public static final native new_RecognitionContext__SWIG_1(FJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;I)J
.end method

.method public static final native new_RecognitionContext__SWIG_2(FJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;)J
.end method

.method public static final native new_RecognitionContext__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)J
.end method

.method public static final native new_RecognitionResultVector__SWIG_0()J
.end method

.method public static final native new_RecognitionResultVector__SWIG_1(J)J
.end method

.method public static final native new_RecognitionResult__SWIG_0()J
.end method

.method public static final native new_RecognitionResult__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;)J
.end method

.method public static final native new_RecognitionResult__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)J
.end method

.method public static final native new_RectF__SWIG_0()J
.end method

.method public static final native new_RectF__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J
.end method

.method public static final native new_RectF__SWIG_2(FFFF)J
.end method

.method public static final native new_Scene()J
.end method

.method public static final native new_SceneAlignSettings()J
.end method

.method public static final native new_SceneBeautifierSettings()J
.end method

.method public static final native new_SceneBeautifier__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J
.end method

.method public static final native new_SceneBeautifier__SWIG_1()J
.end method

.method public static final native new_SceneCircumscriberSettings()J
.end method

.method public static final native new_SceneConnectorSettings()J
.end method

.method public static final native new_SceneConverter()J
.end method

.method public static final native new_SceneLinkerSettings()J
.end method

.method public static final native new_SceneObjectVisitor()J
.end method

.method public static final native new_SceneRecognizer()J
.end method

.method public static final native new_SceneStrokeStyle__SWIG_0()J
.end method

.method public static final native new_SceneStrokeStyle__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)J
.end method

.method public static final native new_SceneStrokeVector__SWIG_0()J
.end method

.method public static final native new_SceneStrokeVector__SWIG_1(J)J
.end method

.method public static final native new_SceneStroke__SWIG_0()J
.end method

.method public static final native new_SceneStroke__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J
.end method

.method public static final native new_SceneStroke__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)J
.end method

.method public static final native new_ShapeInfoVector__SWIG_0()J
.end method

.method public static final native new_ShapeInfoVector__SWIG_1(J)J
.end method

.method public static final native new_ShapeInfo__SWIG_0()J
.end method

.method public static final native new_ShapeInfo__SWIG_1(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;F)J
.end method

.method public static final native new_ShapeInfo__SWIG_2(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J
.end method

.method public static final native new_ShapeInfo__SWIG_3(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;FF)J
.end method

.method public static final native new_ShapeInfo__SWIG_4(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;F)J
.end method

.method public static final native new_ShapeInfo__SWIG_5(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J
.end method

.method public static final native new_ShapeInfo__SWIG_6(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J
.end method

.method public static final native new_ShapePathVector__SWIG_0()J
.end method

.method public static final native new_ShapePathVector__SWIG_1(J)J
.end method

.method public static final native new_ShapePath__SWIG_0()J
.end method

.method public static final native new_ShapePath__SWIG_1(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;F)J
.end method

.method public static final native new_ShapePath__SWIG_2(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;II)J
.end method

.method public static final native new_ShapePath__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J
.end method

.method public static final native new_ShapeRecognizerExternal()J
.end method

.method public static final native new_ShapeRecognizerV2()J
.end method

.method public static final native new_ShapeTypeVector__SWIG_0()J
.end method

.method public static final native new_ShapeTypeVector__SWIG_1(J)J
.end method

.method public static final native new_SizeTVector__SWIG_0()J
.end method

.method public static final native new_SizeTVector__SWIG_1(J)J
.end method

.method public static final native new_StringVector__SWIG_0()J
.end method

.method public static final native new_StringVector__SWIG_1(J)J
.end method

.method public static final native new_TypeVector__SWIG_0()J
.end method

.method public static final native new_TypeVector__SWIG_1(J)J
.end method

.method public static final native new_VectorPointFVectors__SWIG_0()J
.end method

.method public static final native new_VectorPointFVectors__SWIG_1(J)J
.end method

.method public static final native new_VectorSceneStrokeVector__SWIG_0()J
.end method

.method public static final native new_VectorSceneStrokeVector__SWIG_1(J)J
.end method

.method public static final native new_VectorShapeInfoVectors__SWIG_0()J
.end method

.method public static final native new_VectorShapeInfoVectors__SWIG_1(J)J
.end method

.method private static final native swig_module_init()V
.end method

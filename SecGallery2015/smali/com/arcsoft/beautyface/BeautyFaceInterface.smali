.class public Lcom/arcsoft/beautyface/BeautyFaceInterface;
.super Ljava/lang/Object;
.source "BeautyFaceInterface.java"


# instance fields
.field private mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

.field private mFaceRect:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

.field private mHeight:I

.field private mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

.field private mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

.field private mResultArray:[I

.field private mSrcArray:[I

.field private final mSrcFormat:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mSrcArray:[I

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mResultArray:[I

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mFaceRect:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mSrcFormat:I

    return-void
.end method


# virtual methods
.method public beautyFace()V
    .locals 6

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine;

    invoke-direct {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;-><init>(I)V

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    invoke-direct {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    invoke-direct {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mFaceRect:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    iget-object v1, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    invoke-virtual {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->init(Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;)I

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    iget-object v1, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    invoke-virtual {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->getProperty(Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    iget-object v1, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    invoke-virtual {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->getProperty(Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    const/16 v1, 0x32

    iput v1, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSkinSoftenLevel:I

    const-string/jumbo v0, "AE_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Step Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSkinSoftenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget v1, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iFeatureNeeded:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iFeatureNeeded:I

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    iget-object v1, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    invoke-virtual {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->setProperty(Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    iget-object v1, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mSrcArray:[I

    iget v2, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mWidth:I

    iget v3, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mHeight:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mResultArray:[I

    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->beautyFace([IIII[I)I

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    invoke-virtual {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->uninit()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    return-void
.end method

.method public beautyParams([III[I)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mSrcArray:[I

    iput-object p4, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mResultArray:[I

    iput p2, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mWidth:I

    iput p3, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mHeight:I

    return-void
.end method

.method public findFace([III)[Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine;

    invoke-direct {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;-><init>(I)V

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    invoke-direct {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    invoke-direct {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mFaceRect:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    iget-object v1, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    invoke-virtual {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->init(Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;)I

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mFaceRect:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->getFaceRects([IIIILcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;)I

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mFaceRect:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v0, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->rtFaces:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mFaceRect:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v0, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->rtFaces:[Landroid/graphics/Rect;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mFaceRect:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v6, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->rtFaces:[Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    invoke-virtual {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->uninit()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/beautyface/BeautyFaceInterface;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    return-object v6
.end method

.class public Lcom/arcsoft/beautyface/jni/BeautyEngine;
.super Ljava/lang/Object;
.source "BeautyEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;,
        Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;,
        Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;
    }
.end annotation


# static fields
.field public static final ANDROID_BITMAP_FORMAT_RGBA_8888:I = 0x1

.field public static final ANDROID_BITMAP_FORMAT_RGB_565:I = 0x4

.field public static final ARCSOFT_FACE_BASE_MODE:I = 0x1

.field public static final ARCSOFT_SKIN_BASE_MODE:I = 0x0

.field public static final FEATURE_EYE_ENLARGE:I = 0x80

.field public static final FEATURE_SKIN_BRIGHT:I = 0x20

.field public static final FEATURE_SKIN_SOFTEN:I = 0x1

.field public static final FEATURE_SLIM_FACE:I = 0x10

.field private static final MAX_CAPTURE_FACE:I = 0xa

.field private static final MAX_EYE_ENLARGEMENT:I = 0x64

.field private static final MAX_FACE:I = 0x8

.field private static final MAX_PREVIEW_FACE:I = 0x3

.field private static final MAX_SKIN_BRIGHT:I = 0x64

.field private static final MAX_SKIN_SOFTEN:I = 0x64

.field private static final MAX_SLENDER_FACE:I = 0x64

.field private static final MIN_EYE_ENLARGEMENT:I

.field private static final MIN_SKIN_BRIGHT:I

.field private static final MIN_SKIN_SOFTEN:I

.field private static final MIN_SLENDER_FACE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEngine:J

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/arcsoft/beautyface/jni/BeautyEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "arcsoft_beautyface_engine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "arcsoft_beautyface_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    return-void
.end method

.method private native native_beautyFace(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
.end method

.method private native native_beautyFace(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;[J)I
.end method

.method private native native_beautyFace(J[IIII[I)I
.end method

.method private native native_beautyFace(J[IIII[I[Landroid/graphics/Rect;[J)I
.end method

.method private native native_getFaceRects(JLandroid/graphics/Bitmap;Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;)I
.end method

.method private native native_getFaceRects(J[IIIILcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;)I
.end method

.method private native native_getProperty(JLcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I
.end method

.method private native native_init(Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;)I
.end method

.method private native native_setProperty(JLcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I
.end method

.method private native native_uninit(J)I
.end method


# virtual methods
.method public beautyFace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 4

    iget-object v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_beautyFace(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public beautyFace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;[J)I
    .locals 9

    iget-object v8, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-wide v2, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_beautyFace(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;[J)I

    move-result v0

    monitor-exit v8

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public beautyFace([IIII[I)I
    .locals 10

    iget-object v9, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-wide v2, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_beautyFace(J[IIII[I)I

    move-result v0

    monitor-exit v9

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public beautyFace([IIII[I[Landroid/graphics/Rect;[J)I
    .locals 12

    iget-object v11, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-wide v2, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_beautyFace(J[IIII[I[Landroid/graphics/Rect;[J)I

    move-result v0

    monitor-exit v11

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFaceRects(Landroid/graphics/Bitmap;Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;)I
    .locals 4

    iget-object v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_getFaceRects(JLandroid/graphics/Bitmap;Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFaceRects([IIIILcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;)I
    .locals 10

    iget-object v9, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-wide v2, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_getFaceRects(J[IIIILcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;)I

    move-result v0

    monitor-exit v9

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProperty(Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I
    .locals 4

    iget-object v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    invoke-direct {p0, v2, v3, p1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_getProperty(JLcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;)I
    .locals 2

    iget-object v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_init(Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperty(Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I
    .locals 4

    iget-object v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    invoke-direct {p0, v2, v3, p1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_setProperty(JLcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninit()I
    .locals 4

    iget-object v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine;->mEngine:J

    invoke-direct {p0, v2, v3}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->native_uninit(J)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

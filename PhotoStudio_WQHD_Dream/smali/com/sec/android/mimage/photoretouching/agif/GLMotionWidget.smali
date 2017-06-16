.class public Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
.super Landroid/opengl/GLSurfaceView;
.source "GLMotionWidget.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;
    }
.end annotation


# static fields
.field public static final ATTR_POSITION:Ljava/lang/String; = "a_Position"

.field public static final ATTR_TEXTURE_COORDINATE:Ljava/lang/String; = "a_TextureCoordinate"

.field public static DURATION:I = 0x0

.field private static PAUSE_AGIF:I = 0x0

.field private static PLAY_AGIF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PEDIT_GLMotionWidget"

.field public static final TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nvec4 tempColor;\nuniform int u_useBitmap; \nuniform sampler2D u_Sampler;\nvoid main() { \ntempColor = texture2D(u_Sampler, v_TextureCoordinate);\nif(u_useBitmap == 0){\ntempColor = vec4(tempColor.b, tempColor.g, tempColor.r, tempColor.a);\n}\ngl_FragColor = vec4(tempColor.rgb * tempColor.a, 1.0);\n}"

.field public static final TEXTURE_VERTEX_SHADER:Ljava/lang/String; = "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = vec4(a_Position, 0, 1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

.field public static final UNI_COLOR:Ljava/lang/String; = "u_Color"

.field public static final UNI_MATRIX:Ljava/lang/String; = "u_Matrix"

.field public static final UNI_SAMPLER:Ljava/lang/String; = "u_Sampler"

.field public static final UNI_USEBITMAP:Ljava/lang/String; = "u_useBitmap"


# instance fields
.field private currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

.field private currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

.field private currentTrend:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

.field private isPlay:Z

.field private isUseBitmap:Z

.field private item_pos_location:I

.field private item_sampler_location:I

.field private item_texture_location:I

.field private item_useBitmap_location:I

.field mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

.field private mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

.field private mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

.field mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field mDisplayRect:Landroid/graphics/RectF;

.field private mHandler:Landroid/os/Handler;

.field private mItemLoaded:Z

.field private mItemProgram:I

.field private mMotionTexture:I

.field private mOnApplyListener:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;

.field private mPreviousId:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private matLocation:I

.field public sMatrix:[F

.field public sTextureCoordinates:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->PLAY_AGIF:I

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->PAUSE_AGIF:I

    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->sTextureCoordinates:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->sMatrix:[F

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemLoaded:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemProgram:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Forward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mPreviousId:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isUseBitmap:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlay:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setRenderMode(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->sTextureCoordinates:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mTextureBuffer:Ljava/nio/FloatBuffer;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;-><init>(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mOnApplyListener:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->PLAY_AGIF:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    return-object v0
.end method

.method private createPinchHelper(I)V
    .locals 9

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v0, v4, :cond_1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mOnApplyListener:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->setOnApplyListener(Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    new-instance v1, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v1, v0, v4, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->updateMotionVertexBuffer()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v6, v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->updateTextureRect(Landroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v3, v0, v4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->setViewDimensions(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    :cond_1
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private drawMotion()V
    .locals 7

    const/16 v2, 0x1406

    const/16 v6, 0xde1

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->loadMotionTexture()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mTextureBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_texture_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_sampler_location:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_useBitmap_location:I

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isUseBitmap:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_pos_location:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_texture_location:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private getNextIndex()I
    .locals 4

    const/4 v3, 0x2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$3;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-gez v0, :cond_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-gez v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$3;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$GLMotionWidget$TREND:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    if-gez v0, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    :goto_1
    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;->DECREASE:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    if-gez v0, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_6

    const/4 v0, 0x1

    :goto_2
    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const v7, 0x8b81

    const/4 v4, 0x0

    const v5, 0x8b31

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    const v5, 0x8b30

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v5, 0x1

    new-array v2, v5, [I

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {v3, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_0

    const-string v5, "PEDIT_GLMotionWidget"

    const-string v6, "vertex shader compilation failed...."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PEDIT_GLMotionWidget"

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :goto_0
    return v1

    :cond_0
    const-string v5, "PEDIT_GLMotionWidget"

    const-string v6, "vertex shader compilation successful"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {v0, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_1

    const-string v5, "PEDIT_GLMotionWidget"

    const-string v6, "fragment shader compilation failed...."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PEDIT_GLMotionWidget"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v5, "PEDIT_GLMotionWidget"

    const-string v6, "fragment shader compilation successful"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v5, 0x8b82

    invoke-static {v1, v5, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_2

    const-string v5, "PEDIT_GLMotionWidget"

    const-string v6, "program link error..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PEDIT_GLMotionWidget"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v4, "PEDIT_GLMotionWidget"

    const-string v5, "program link successful"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadPrograms()V
    .locals 2

    const-string v0, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = vec4(a_Position, 0, 1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v1, "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nvec4 tempColor;\nuniform int u_useBitmap; \nuniform sampler2D u_Sampler;\nvoid main() { \ntempColor = texture2D(u_Sampler, v_TextureCoordinate);\nif(u_useBitmap == 0){\ntempColor = vec4(tempColor.b, tempColor.g, tempColor.r, tempColor.a);\n}\ngl_FragColor = vec4(tempColor.rgb * tempColor.a, 1.0);\n}"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemProgram:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_pos_location:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemProgram:I

    const-string v1, "a_TextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_texture_location:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemProgram:I

    const-string v1, "u_Sampler"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_sampler_location:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemProgram:I

    const-string v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->matLocation:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemProgram:I

    const-string v1, "u_useBitmap"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->item_useBitmap_location:I

    return-void
.end method

.method public static setDuration(I)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x1f4

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->DURATION:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->DURATION:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->DURATION:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateMotionVertexBuffer()V
    .locals 17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mScreenHeight:I

    const/4 v14, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$3;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$ASPECT_RATIO:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v9, v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v5

    div-float v12, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v6

    div-float v11, v1, v2

    cmpl-float v1, v12, v11

    if-lez v1, :cond_0

    move v10, v12

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v1, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v1, v10

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v5

    sub-float/2addr v2, v8

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v3, v6

    sub-float/2addr v3, v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v5

    sub-float/2addr v4, v8

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    add-float/2addr v4, v8

    int-to-float v15, v6

    sub-float/2addr v15, v7

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v15, v7

    invoke-direct {v1, v2, v3, v4, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v14

    array-length v1, v14

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :pswitch_0
    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_1
    const v9, 0x3faaaaab

    goto/16 :goto_0

    :pswitch_2
    const/high16 v9, 0x3f400000    # 0.75f

    goto/16 :goto_0

    :pswitch_3
    const v9, 0x3fe38e39

    goto/16 :goto_0

    :pswitch_4
    const/high16 v9, 0x3f100000    # 0.5625f

    goto/16 :goto_0

    :pswitch_5
    const/high16 v9, -0x40800000    # -1.0f

    goto/16 :goto_0

    :cond_0
    move v10, v11

    goto/16 :goto_1

    :cond_1
    int-to-float v1, v5

    div-float v7, v1, v9

    int-to-float v1, v6

    mul-float v8, v9, v1

    int-to-float v1, v6

    cmpg-float v1, v7, v1

    if-gtz v1, :cond_3

    int-to-float v8, v5

    :cond_2
    :goto_3
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v5

    sub-float/2addr v2, v8

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v3, v6

    sub-float/2addr v3, v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v5

    sub-float/2addr v4, v8

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    add-float/2addr v4, v8

    int-to-float v15, v6

    sub-float/2addr v15, v7

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v15, v7

    invoke-direct {v1, v2, v3, v4, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    goto/16 :goto_2

    :cond_3
    int-to-float v1, v5

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_2

    int-to-float v7, v6

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->onPause()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    if-eq v0, v3, :cond_1

    new-array v0, v5, [I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    aput v1, v0, v4

    invoke-static {v5, v0, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->sTextureCoordinates:[F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->sMatrix:[F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->destroy()V

    :cond_2
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mPreviousId:I

    return v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlay:Z

    return v0
.end method

.method public loadMotionTexture()V
    .locals 10

    const v6, 0x47012f00    # 33071.0f

    const v5, 0x46180400    # 9729.0f

    const/4 v9, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    if-gez v2, :cond_0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mPreviousId:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    :goto_0
    return-void

    :cond_0
    const-string v2, "PEDIT_GLMotionWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemLoaded:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isUseBitmap:Z

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-array v2, v9, [I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    aput v3, v2, v1

    invoke-static {v9, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    :cond_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mMotionTexture:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    if-eqz v2, :cond_3

    const/16 v2, 0x2801

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    invoke-static {v0, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    invoke-static {v0, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemLoaded:Z

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isUseBitmap:Z

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->updateMotionVertexBuffer()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->updateTextureBuffer()V

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mPreviousId:I

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlay:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getNextIndex()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    :cond_4
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->openFileBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0x1908

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v4

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/4 v8, 0x0

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mItemLoaded:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isUseBitmap:Z

    goto :goto_1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->drawMotion()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    const v1, 0x3f6ccccd    # 0.925f

    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mScreenWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mScreenHeight:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->updateMotionVertexBuffer()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->updateTextureBuffer()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlay:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mPreviousId:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const v1, 0x3f6ccccd    # 0.925f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->loadPrograms()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->onTouch(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlay:Z

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mPreviousId:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->createPinchHelper(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->PLAY_AGIF:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PEDIT_GLMotionWidget"

    const-string v1, "pause agif"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->PLAY_AGIF:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$3;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlay:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->PLAY_AGIF:I

    sget v2, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    if-gez v0, :cond_0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$3;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$GLMotionWidget$TREND:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    if-gez v0, :cond_0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public play(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->PLAY_AGIF:I

    sget v2, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reInit()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mPreviousId:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    return-void
.end method

.method public setAdapter(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    return-void
.end method

.method public setAspectRatio(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mPreviousId:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mPreviousId:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->createPinchHelper(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->requestRender()V

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    :try_start_1
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->createPinchHelper(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->requestRender()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDirection(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$TREND;

    return-void
.end method

.method public updateTextureBuffer()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->updateTextureRect(Landroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->getTranslateX()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->getTranslateY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->update()V

    :cond_0
    const/16 v2, 0x8

    new-array v0, v2, [F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v0, v5

    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x3

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x4

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x5

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x6

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x7

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

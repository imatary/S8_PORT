.class public Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;
.super Landroid/opengl/GLSurfaceView;
.source "GLCollageWidget.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;
    }
.end annotation


# static fields
.field public static final ATTR_POSITION:Ljava/lang/String; = "a_Position"

.field public static final ATTR_TEXTURE_COORDINATE:Ljava/lang/String; = "a_TextureCoordinate"

.field public static final BG_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nvoid main() { \ngl_FragColor = texture2D(u_Sampler, v_TextureCoordinate);\n}"

.field public static final CIRCLE_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nvarying vec2 v_TextureCoordinate;\nuniform vec4 u_Color;\nvec4 outside;\nvoid main() { \noutside = vec4(0.0);vec2 u_Center = vec2(0.5,0.5);\nfloat dist = distance(u_Center,vec2(v_TextureCoordinate.x,v_TextureCoordinate.y));\nfloat delta = 0.009;\nfloat alpha = smoothstep(0.5-delta, 0.5, dist);\nif(dist <=  0.5 - delta) {\ngl_FragColor = u_Color;\n}else{\ngl_FragColor = mix(u_Color,outside,alpha);\n}\n}"

.field public static final CIRCLE_VERTEX_SHADER:Ljava/lang/String; = "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

.field private static final MSG_SCREEN_SIZE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PEDIT_GLCollageWidget"

.field public static final TEXTURE_VERTEX_SHADER:Ljava/lang/String; = "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

.field public static final UNI_COLOR:Ljava/lang/String; = "u_Color"

.field public static final UNI_MATRIX:Ljava/lang/String; = "u_Matrix"

.field public static final UNI_SAMPLER:Ljava/lang/String; = "u_Sampler"

.field public static colorBackgroundCollage:[F

.field public static sMatrix:[F

.field private static sTextureBuffer:Ljava/nio/FloatBuffer;

.field public static sTextureCoordinates:[F


# instance fields
.field private bg_pos_location:I

.field private bg_sampler_location:I

.field private bg_texture_location:I

.field private density:F

.field private dl_oval_pos_location:I

.field private dl_oval_sampler_location:I

.field private dl_oval_texture_location:I

.field private dl_pos_location:I

.field private dl_sampler_location:I

.field private dl_texture_location:I

.field private drag_color_location:I

.field private drag_max_x_location:I

.field private drag_max_y_location:I

.field private drag_pos_location:I

.field private drag_reference_location:I

.field private drag_roundedness_location:I

.field private isOrientationChanged:Z

.field private item_max_x_location:I

.field private item_max_y_location:I

.field private item_pos_location:I

.field private item_reference_location:I

.field private item_roundedness_location:I

.field private item_sampler_location:I

.field private item_texture_location:I

.field private mBGLoaded:Z

.field private mBGProgram:I

.field private mBGTexture:I

.field public mBGTileCount:I

.field private mBGVertexBuffer:Ljava/nio/FloatBuffer;

.field private mContext:Landroid/content/Context;

.field private mDLCollageHandlerBg:Landroid/graphics/Bitmap;

.field private mDLHandlerTexture:I

.field private mDLLeftRightBitmap:Landroid/graphics/Bitmap;

.field private mDLOvalProgram:I

.field private mDLProgram:I

.field private mDLSelectLeftTexture:I

.field private mDLSelectTopTexture:I

.field private mDLSelectorLoaded:Z

.field private mDLTopBottomBitmap:Landroid/graphics/Bitmap;

.field private mDragBuffer:Ljava/nio/FloatBuffer;

.field private mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field private mDragMoveItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field private mDragProgram:I

.field private mDragging:Z

.field private mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

.field private mHandler:Landroid/os/Handler;

.field private mItemInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;",
            "Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemProgram:I

.field private mReloadTexture:Z

.field private mRoundStep:F

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mSelProgram:I

.field private renderOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;",
            ">;"
        }
    .end annotation
.end field

.field private sel_border_location:I

.field private sel_color_location:I

.field private sel_max_x_location:I

.field private sel_max_y_location:I

.field private sel_pos_location:I

.field private sel_reference_location:I

.field private sel_roundedness_location:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sTextureCoordinates:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->colorBackgroundCollage:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sMatrix:[F

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sTextureCoordinates:[F

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

    sget-object v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sTextureCoordinates:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

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

    :array_1
    .array-data 4
        0x3f6ccccd    # 0.925f
        0x3f6ccccd    # 0.925f
        0x3f6ccccd    # 0.925f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->isOrientationChanged:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGProgram:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLProgram:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLOvalProgram:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTexture:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGLoaded:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectorLoaded:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLHandlerTexture:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectTopTexture:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectLeftTexture:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragging:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mRoundStep:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mReloadTexture:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageListener(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->density:F

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->setRenderMode(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$2;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mRoundStep:F

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mRoundStep:F

    return p1
.end method

.method private drawCollage()V
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x4

    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getBGBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->loadBGTexture()V

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->bg_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->bg_texture_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->bg_sampler_location:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v0, 0xde1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTexture:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->bg_pos_location:I

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->bg_texture_location:I

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTileCount:I

    if-ge v7, v0, :cond_1

    mul-int/lit8 v0, v7, 0x4

    invoke-static {v13, v0, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragging:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_reference_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_roundedness_location:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getRoundedness()F

    move-result v4

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_pos_location:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_reference_location:I

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mReferenceBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_max_x_location:I

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxX:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_max_y_location:I

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxY:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_color_location:I

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->DRAG_BG_COLOR:[F

    invoke-static {v0, v4, v5, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    invoke-static {v13, v3, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_reference_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_texture_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_roundedness_location:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getRoundedness()F

    move-result v4

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    if-eqz v8, :cond_3

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->update()V

    iget-boolean v0, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mLoaded:Z

    if-nez v0, :cond_4

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->loadTexture(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_4
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_pos_location:I

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_reference_location:I

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mReferenceBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_texture_location:I

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_sampler_location:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_max_x_location:I

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxX:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_max_y_location:I

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxY:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/16 v0, 0xde1

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v13, v3, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragging:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragMoveItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-ne v0, v9, :cond_3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_reference_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_roundedness_location:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getRoundedness()F

    move-result v4

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_pos_location:I

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_reference_location:I

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mReferenceBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_max_x_location:I

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxX:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_max_y_location:I

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxY:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_color_location:I

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->DRAG_MOVE_COLOR:[F

    invoke-static {v0, v4, v5, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    invoke-static {v13, v3, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_reference_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_texture_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v10

    if-eqz v10, :cond_c

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_reference_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_roundedness_location:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getRoundedness()F

    move-result v4

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_pos_location:I

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_reference_location:I

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mReferenceBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_max_x_location:I

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxX:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_max_y_location:I

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxY:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_border_location:I

    iget v4, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mSelStroke:F

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_color_location:I

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->SELECTION_COLOR:[F

    invoke-static {v0, v4, v5, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    invoke-static {v13, v3, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectorLoaded:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->loadDLSelectorTexture()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isDLResizing()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getDLId()I

    move-result v6

    :goto_2
    const/4 v0, -0x1

    if-eq v6, v0, :cond_8

    iget-object v0, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_8

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_texture_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_sampler_location:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_texture_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_sampler_location:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_pos_location:I

    const/16 v4, 0x10

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_texture_location:I

    const/16 v4, 0x10

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    if-eqz v6, :cond_7

    if-ne v6, v1, :cond_b

    :cond_7
    const/16 v0, 0xde1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectLeftTexture:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_3
    invoke-static {v13, v3, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_8
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_pos_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_texture_location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_sampler_location:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v7, 0x0

    :goto_4
    const/4 v0, 0x3

    if-gt v7, v0, :cond_c

    iget-object v0, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    aget-object v0, v0, v7

    if-eqz v0, :cond_9

    iget-object v0, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    aget-object v0, v0, v7

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_pos_location:I

    const/16 v4, 0x10

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    aget-object v5, v5, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    aget-object v0, v0, v7

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_texture_location:I

    const/16 v4, 0x10

    iget-object v5, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    aget-object v5, v5, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 v0, 0xde1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLHandlerTexture:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v13, v3, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    const/4 v6, -0x1

    goto/16 :goto_2

    :cond_b
    const/16 v0, 0xde1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectTopTexture:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_3

    :cond_c
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method private static getProgram(Ljava/lang/String;Ljava/lang/String;)I
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

    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {v3, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_0

    const-string v5, "PEDIT_GLCollageWidget"

    const-string v6, "vertex shader compilation failed...."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PEDIT_GLCollageWidget"

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :goto_0
    return v1

    :cond_0
    const-string v5, "PEDIT_GLCollageWidget"

    const-string v6, "vertex shader compilation successful"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {v0, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_1

    const-string v5, "PEDIT_GLCollageWidget"

    const-string v6, "fragment shader compilation failed...."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PEDIT_GLCollageWidget"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v5, "PEDIT_GLCollageWidget"

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

    const-string v5, "PEDIT_GLCollageWidget"

    const-string v6, "program link error..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PEDIT_GLCollageWidget"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v4, "PEDIT_GLCollageWidget"

    const-string v5, "program link successful"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadPrograms()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSmoothEnable()Z

    move-result v0

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v3, "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nvoid main() { \ngl_FragColor = texture2D(u_Sampler, v_TextureCoordinate);\n}"

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGProgram:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGProgram:I

    const-string v3, "a_Position"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->bg_pos_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGProgram:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->bg_texture_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGProgram:I

    const-string v3, "u_Sampler"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->bg_sampler_location:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f060009

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const v1, 0x7f06000d

    :goto_0
    invoke-static {v4, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    const-string v3, "a_Position"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_pos_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_texture_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    const-string v3, "u_Sampler"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_sampler_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    const-string v3, "roundedness"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_roundedness_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    const-string v3, "a_ReferencePosition"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_reference_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    const-string v3, "maxX"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_max_x_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemProgram:I

    const-string v3, "maxY"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->item_max_y_location:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f06000c

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const v1, 0x7f06000e

    :goto_1
    invoke-static {v4, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    const-string v3, "a_Position"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_pos_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    const-string v3, "roundedness"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_roundedness_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    const-string v3, "a_ReferencePosition"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_reference_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    const-string v3, "maxX"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_max_x_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    const-string v3, "maxY"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_max_y_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    const-string v3, "selBorder"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_border_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mSelProgram:I

    const-string v3, "selColor"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->sel_color_location:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f060005

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    const v4, 0x7f060004

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLProgram:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLProgram:I

    const-string v3, "a_Position"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_pos_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLProgram:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_texture_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLProgram:I

    const-string v3, "u_Sampler"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->dl_sampler_location:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f060007

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    const v4, 0x7f060006

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    const-string v3, "a_Position"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_pos_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    const-string v3, "roundedness"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_roundedness_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    const-string v3, "a_ReferencePosition"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_reference_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    const-string v3, "maxX"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_max_x_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    const-string v3, "maxY"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_max_y_location:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragProgram:I

    const-string v3, "u_Color"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drag_color_location:I

    monitor-exit v2

    return-void

    :cond_0
    const v1, 0x7f060008

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f06000b

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseBGTexture()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTexture:I

    if-eq v0, v3, :cond_0

    new-array v0, v4, [I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTexture:I

    aput v1, v0, v2

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTexture:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGLoaded:Z

    return-void
.end method

.method private requestRefreshSurface()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "GlCollageWidget::requestRefreshSurface"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateBGBuffer()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getBGTiles()[I

    move-result-object v6

    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x1

    aget v1, v6, v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTileCount:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForTiles(FFFFII[I)[F

    move-result-object v7

    array-length v0, v7

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    return v0
.end method

.method public loadBGTexture()V
    .locals 6

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const/16 v2, 0xde1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTexture:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTexture:I

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTexture:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getBGBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getBGBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    :cond_1
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGLoaded:Z

    return-void
.end method

.method public loadDLSelectorTexture()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLCollageHandlerBg:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLHandlerTexture:I

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLHandlerTexture:I

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLHandlerTexture:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLCollageHandlerBg:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLCollageHandlerBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLTopBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLLeftRightBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectTopTexture:I

    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectTopTexture:I

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectTopTexture:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLTopBottomBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectLeftTexture:I

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectLeftTexture:I

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectLeftTexture:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLLeftRightBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLLeftRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLTopBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectorLoaded:Z

    return-void
.end method

.method public onAnimating(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eq v1, p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getAnimation()Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->getAnimMode()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getAnimation()Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->getAnimMode()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBackgroundUpdated()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->updateBGBuffer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGLoaded:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    return-void
.end method

.method public onDLFinished(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v2

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDLInit(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    if-eqz v0, :cond_0

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->createBuffer()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;)V

    :cond_0
    return-void
.end method

.method public onDimensionsUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->updateBGBuffer()V

    return-void
.end method

.method public onDimensionsUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    if-eqz v0, :cond_0

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->createBuffer()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mRoundStep:F

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setRoundSeekBarKeyIncrement(F)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    :cond_1
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragging:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragMoveItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDragMove(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragMoveItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDragStart(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragging:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    new-array v0, v2, [F

    iget-object v2, v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDragBuffer:Ljava/nio/FloatBuffer;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const-string v2, "GlCollageWidget::onDrawFrame"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v3

    const/16 v2, 0x4000

    :try_start_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->drawCollage()V

    const-string v2, "PEDIT_GLCollageWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawCollage time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onImageMoved(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Landroid/graphics/RectF;Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->updateTextureBuffer(Landroid/graphics/RectF;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    :cond_1
    return-void
.end method

.method public onImageUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "PEDIT_GLCollageWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onImageupdated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->destroy()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->access$200(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    :cond_1
    return-void
.end method

.method public onItemAdded(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 3

    const-string v1, "PEDIT_GLCollageWidget"

    const-string v2, "onItemadded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onItemRemoved(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    new-array v1, v4, [I

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    aput v2, v1, v3

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mLoaded:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->renderOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onItemsResized([Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 6

    const/4 v2, 0x0

    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->createBuffer()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->updateTextureBuffer(Landroid/graphics/RectF;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    array-length v3, p2

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->createBuffer()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->updateTextureBuffer(Landroid/graphics/RectF;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mRoundStep:F

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setRoundSeekBarKeyIncrement(F)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    return-void
.end method

.method public onItemsSwapped(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 0

    return-void
.end method

.method public onMarginUpdated(F)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    if-eqz v0, :cond_0

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->createBuffer()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;)V

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->updateTextureBuffer(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mRoundStep:F

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setRoundSeekBarKeyIncrement(F)V

    return-void
.end method

.method public onRoundnessUpdated(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    return-void
.end method

.method public onSelectionUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLCollageWidget::onSurfaceChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-static {v8, v8, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    sget-object v3, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->colorBackgroundCollage:[F

    aget v3, v3, v8

    sget-object v4, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->colorBackgroundCollage:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget-object v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->colorBackgroundCollage:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    sget-object v6, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->colorBackgroundCollage:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mReloadTexture:Z

    if-eqz v3, :cond_0

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mReloadTexture:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->releaseBGTexture()V

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGLoaded:Z

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mBGTexture:I

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectorLoaded:Z

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectTopTexture:I

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLSelectLeftTexture:I

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mDLHandlerTexture:I

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mItemInfo:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->onSurfaceChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->loadPrograms()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mReloadTexture:Z

    return-void
.end method

.method public requestRender()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLCollageWidget::requestRender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

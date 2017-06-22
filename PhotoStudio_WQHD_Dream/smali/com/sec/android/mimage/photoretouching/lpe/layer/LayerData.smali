.class public Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;
.super Ljava/lang/Object;
.source "LayerData.java"


# instance fields
.field private mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

.field private mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field private mImageDataListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

.field private mLayerId:I

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerId:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageDataListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageDataListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-direct {v0, v1, p1, p4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-void
.end method

.method public decode(Landroid/graphics/Bitmap;ZZ)V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->run()V

    goto :goto_0
.end method

.method public decode(Landroid/net/Uri;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;Z)V
    .locals 6

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;-><init>(Landroid/net/Uri;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->start()V

    return-void
.end method

.method public decode(Ljava/lang/String;Landroid/net/Uri;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;ZZ)V
    .locals 7

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;-><init>(Ljava/lang/String;Landroid/net/Uri;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->run()V

    goto :goto_0
.end method

.method public decode(Ljava/lang/String;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;ZZ)V
    .locals 6

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;-><init>(Ljava/lang/String;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->run()V

    goto :goto_0
.end method

.method public draw()V
    .locals 0

    return-void
.end method

.method public getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    return-object v0
.end method

.method public getLayerId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerId:I

    return v0
.end method

.method public getPreviewBuffer()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v0

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v0

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerId:I

    return-void
.end method

.method public setPreviewTexture()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getPreviewBuffer()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getPreviewHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    :cond_0
    return-void
.end method

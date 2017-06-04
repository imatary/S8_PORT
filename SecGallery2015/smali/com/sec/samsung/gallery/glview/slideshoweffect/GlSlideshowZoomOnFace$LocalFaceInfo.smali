.class Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;
.super Ljava/lang/Object;
.source "GlSlideshowZoomOnFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalFaceInfo"
.end annotation


# instance fields
.field private animDone:Z

.field private faceX:F

.field private faceY:F

.field private scaleValue:F

.field private state:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->animDone:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;-><init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->animDone:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->animDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->state:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->state:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;F)F
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->scaleValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F

    return v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;F)F
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceX:F

    return p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F

    return v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;F)F
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$LocalFaceInfo;->faceY:F

    return p1
.end method

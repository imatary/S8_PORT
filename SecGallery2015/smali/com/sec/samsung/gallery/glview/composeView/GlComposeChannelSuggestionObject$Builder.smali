.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
.super Ljava/lang/Object;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddAllClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mAddAllGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mCancelClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mContext:Landroid/content/Context;

.field private mImageGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

.field private mThumbClickLister:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mThumbClickLister:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mCancelClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mAddAllClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mAddAllGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mImageGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V

    return-object v0
.end method

.method setAddAllClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mAddAllClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.method setAddAllGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mAddAllGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object p0
.end method

.method setCancelClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mCancelClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method setDeleteGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object p0
.end method

.method setImageGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mImageGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object p0
.end method

.method public setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object p0
.end method

.method setPositionController(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    return-object p0
.end method

.method setThumbClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->mThumbClickLister:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;
.super Ljava/lang/Object;
.source "GlComposeSocialStoryObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCommentCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mLastCommentClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mLikeClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mLikeCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLikeClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLikeCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mCommentCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLastCommentClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$1;)V

    return-object v0
.end method

.method setCommentCountClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mCommentCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.method setLastCommentClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLastCommentClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.method public setLayer(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object p0
.end method

.method setLikeClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLikeClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.method setLikeCountClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLikeCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.method public setParent(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object p0
.end method

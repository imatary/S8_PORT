.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;
.super Ljava/lang/Object;
.source "GlComposeSocialCoverObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

.field private mFriendsGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mHLVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mSharedFriendsClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mSharedFriendsClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mFriendsGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mHLVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$1;)V

    return-object v0
.end method

.method setFriendsGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mFriendsGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object p0
.end method

.method setHLVGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object p0
.end method

.method setHLVPlayIconClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mHLVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.method public setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object p0
.end method

.method setParent(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    return-object p0
.end method

.method setSharedFriendsClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mSharedFriendsClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;
.super Ljava/lang/Object;
.source "GlComposeChannelSharedFriendObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mExpanded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$1;)V

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setExpanded(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mExpanded:Z

    return-object p0
.end method

.method public setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object p0
.end method

.method public setMoreGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object p0
.end method

.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;
.super Ljava/lang/Object;
.source "GlComposeChannelGridTimelineObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mGridClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mGridGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mTimelineClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mTimelineGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mGridGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mTimelineGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mTimelineClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mGridClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$1;)V

    return-object v0
.end method

.method setGridClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mGridClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.method setGridGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mGridGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object p0
.end method

.method public setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object p0
.end method

.method setTimelineClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mTimelineClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object p0
.end method

.method setTimelineGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->mTimelineGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object p0
.end method

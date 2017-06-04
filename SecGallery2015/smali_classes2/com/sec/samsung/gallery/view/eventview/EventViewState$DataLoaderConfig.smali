.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$DataLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "EventViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$DataLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$DataLoaderConfig;->mScanFirstOnly:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$DataLoaderConfig;->mCheckSetVersion:Z

    const-string/jumbo v0, "EventViewState"

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$DataLoaderConfig;->mCurrentViewStateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 1

    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$DataLoaderConfig;->mRetThmType:B

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

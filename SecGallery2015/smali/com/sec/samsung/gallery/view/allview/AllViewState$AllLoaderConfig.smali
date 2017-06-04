.class Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "AllViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;->mScanAllSet:Z

    const-string/jumbo v0, "AllViewState"

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;->mCurrentViewStateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 1

    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;->mRetThmType:B

    return p1
.end method

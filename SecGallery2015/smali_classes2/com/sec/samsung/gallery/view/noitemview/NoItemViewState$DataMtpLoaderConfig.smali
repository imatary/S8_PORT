.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataMtpLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "NoItemViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataMtpLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataMtpLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    const-string/jumbo v0, "NoItemViewState-Mtp"

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataMtpLoaderConfig;->mCurrentViewStateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 0

    return p1
.end method

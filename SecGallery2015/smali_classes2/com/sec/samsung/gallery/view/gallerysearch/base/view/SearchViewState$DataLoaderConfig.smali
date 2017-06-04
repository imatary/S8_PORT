.class public Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$DataLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "SearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DataLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$DataLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$DataLoaderConfig;->mScanAllSet:Z

    return-void
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 1

    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$DataLoaderConfig;->mRetThmType:B

    return p1
.end method

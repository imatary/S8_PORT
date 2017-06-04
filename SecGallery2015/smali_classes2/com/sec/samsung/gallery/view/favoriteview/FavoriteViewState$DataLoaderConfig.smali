.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DataLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "FavoriteViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DataLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DataLoaderConfig;->mFirstRangeOptimization:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DataLoaderConfig;->mScanAllSet:Z

    const-string/jumbo v0, "FavoriteViewState"

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DataLoaderConfig;->mCurrentViewStateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 1

    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DataLoaderConfig;->mRetThmType:B

    return p1
.end method

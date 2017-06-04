.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuHideShowAlbum;
.super Ljava/lang/Object;
.source "DCNlgMenuHideShowAlbum.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# instance fields
.field private final mCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuHideShowAlbum;->mCount:I

    return-void
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuHideShowAlbum;->mCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string/jumbo v1, "AlbumCount"

    const-string/jumbo v2, "IsOne"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v1, "Items_count"

    iget v2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuHideShowAlbum;->mCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "AlbumCount"

    const-string/jumbo v2, "IsOne"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

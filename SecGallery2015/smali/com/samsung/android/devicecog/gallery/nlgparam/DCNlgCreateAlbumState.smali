.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;
.super Ljava/lang/Object;
.source "DCNlgCreateAlbumState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# instance fields
.field private final mAlbumName:Ljava/lang/String;

.field private final mIsAlbumExist:Z

.field private final mIsSuccess:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;->mIsAlbumExist:Z

    iput-boolean p2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;->mIsSuccess:Z

    iput-object p3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;->mAlbumName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 5

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;->mIsAlbumExist:Z

    if-eqz v3, :cond_1

    const-string/jumbo v0, "Exist"

    iget-boolean v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;->mIsSuccess:Z

    if-eqz v3, :cond_0

    const-string/jumbo v1, "yes"

    :goto_0
    const-string/jumbo v3, "AlbumName"

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    return-object v2

    :cond_0
    const-string/jumbo v1, "no"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Duplicate"

    iget-boolean v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;->mIsSuccess:Z

    if-eqz v3, :cond_2

    const-string/jumbo v1, "no"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "yes"

    const-string/jumbo v3, "AlbumName"

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

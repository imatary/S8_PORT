.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSetAsWallpaperState;
.super Ljava/lang/Object;
.source "DCNlgSetAsWallpaperState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# instance fields
.field private final mIsSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSetAsWallpaperState;->mIsSuccess:Z

    return-void
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSetAsWallpaperState;->mIsSuccess:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SetWallpaper"

    const-string/jumbo v2, "Available"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "SetWallpaper"

    const-string/jumbo v2, "Available"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

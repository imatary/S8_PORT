.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;
.super Ljava/lang/Object;
.source "DCNlgMenuFavorite.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# static fields
.field private static mCurrentStatus:Z

.field private static mSetOn:Z


# instance fields
.field private mIsMenuAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-boolean p1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;->mSetOn:Z

    sput-boolean p2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;->mCurrentStatus:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;->mIsMenuAvailable:Z

    return-void
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 7

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;->mIsMenuAvailable:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;->mSetOn:Z

    if-eqz v4, :cond_0

    const-string/jumbo v3, "FavoriteOn"

    :goto_0
    const-string/jumbo v0, "AlreadySet"

    sget-boolean v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;->mSetOn:Z

    sget-boolean v5, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;->mCurrentStatus:Z

    if-ne v4, v5, :cond_1

    const-string/jumbo v1, "yes"

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :goto_2
    return-object v2

    :cond_0
    const-string/jumbo v3, "FavoriteOff"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "no"

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "Favorite"

    const-string/jumbo v5, "Available"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_2
.end method

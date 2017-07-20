.class public interface abstract Lcom/google/android/gms/games/quest/Quest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/games/quest/Quest;",
        ">;"
    }
.end annotation


# static fields
.field public static final QUEST_STATE_ALL:[I
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation
.end field

.field public static final QUEST_STATE_NON_TERMINAL:[Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v2, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v3, v0, v6

    aput v4, v0, v3

    aput v5, v0, v4

    aput v2, v0, v5

    const/4 v1, 0x6

    aput v1, v0, v2

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/quest/Quest;->QUEST_STATE_ALL:[I

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/games/quest/Quest;->QUEST_STATE_NON_TERMINAL:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getAcceptedTimestamp()J
.end method

.method public abstract getBannerImageUri()Landroid/net/Uri;
.end method

.method public abstract getBannerImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEndTimestamp()J
.end method

.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method

.method public abstract getIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLastUpdatedTimestamp()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getQuestId()Ljava/lang/String;
.end method

.method public abstract getStartTimestamp()J
.end method

.method public abstract getState()I
.end method

.method public abstract getType()I
.end method

.method public abstract zzxR()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/quest/Milestone;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzxS()J
.end method

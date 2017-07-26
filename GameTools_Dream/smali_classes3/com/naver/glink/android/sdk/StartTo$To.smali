.class public final enum Lcom/naver/glink/android/sdk/StartTo$To;
.super Ljava/lang/Enum;
.source "StartTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/StartTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "To"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/StartTo$To;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/StartTo$To;

.field public static final enum ALL_IMAGES:Lcom/naver/glink/android/sdk/StartTo$To;

.field public static final enum ALL_VIDEOS:Lcom/naver/glink/android/sdk/StartTo$To;

.field public static final enum ARTICLE:Lcom/naver/glink/android/sdk/StartTo$To;

.field public static final enum JUST_TAB:Lcom/naver/glink/android/sdk/StartTo$To;

.field public static final enum MENU:Lcom/naver/glink/android/sdk/StartTo$To;

.field public static final enum WRITE:Lcom/naver/glink/android/sdk/StartTo$To;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo$To;

    const-string/jumbo v1, "JUST_TAB"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/StartTo$To;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/StartTo$To;->JUST_TAB:Lcom/naver/glink/android/sdk/StartTo$To;

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo$To;

    const-string/jumbo v1, "ARTICLE"

    invoke-direct {v0, v1, v4}, Lcom/naver/glink/android/sdk/StartTo$To;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/StartTo$To;->ARTICLE:Lcom/naver/glink/android/sdk/StartTo$To;

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo$To;

    const-string/jumbo v1, "WRITE"

    invoke-direct {v0, v1, v5}, Lcom/naver/glink/android/sdk/StartTo$To;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/StartTo$To;->WRITE:Lcom/naver/glink/android/sdk/StartTo$To;

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo$To;

    const-string/jumbo v1, "MENU"

    invoke-direct {v0, v1, v6}, Lcom/naver/glink/android/sdk/StartTo$To;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/StartTo$To;->MENU:Lcom/naver/glink/android/sdk/StartTo$To;

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo$To;

    const-string/jumbo v1, "ALL_VIDEOS"

    invoke-direct {v0, v1, v7}, Lcom/naver/glink/android/sdk/StartTo$To;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/StartTo$To;->ALL_VIDEOS:Lcom/naver/glink/android/sdk/StartTo$To;

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo$To;

    const-string/jumbo v1, "ALL_IMAGES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/StartTo$To;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/StartTo$To;->ALL_IMAGES:Lcom/naver/glink/android/sdk/StartTo$To;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/naver/glink/android/sdk/StartTo$To;

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->JUST_TAB:Lcom/naver/glink/android/sdk/StartTo$To;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->ARTICLE:Lcom/naver/glink/android/sdk/StartTo$To;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->WRITE:Lcom/naver/glink/android/sdk/StartTo$To;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->MENU:Lcom/naver/glink/android/sdk/StartTo$To;

    aput-object v1, v0, v6

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->ALL_VIDEOS:Lcom/naver/glink/android/sdk/StartTo$To;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/naver/glink/android/sdk/StartTo$To;->ALL_IMAGES:Lcom/naver/glink/android/sdk/StartTo$To;

    aput-object v2, v0, v1

    sput-object v0, Lcom/naver/glink/android/sdk/StartTo$To;->$VALUES:[Lcom/naver/glink/android/sdk/StartTo$To;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/StartTo$To;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/StartTo$To;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/StartTo$To;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/StartTo$To;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/StartTo$To;->$VALUES:[Lcom/naver/glink/android/sdk/StartTo$To;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/StartTo$To;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/StartTo$To;

    return-object v0
.end method

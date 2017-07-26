.class public final enum Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;
.super Ljava/lang/Enum;
.source "ArticleMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/response/ArticleMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

.field public static final enum NONE:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

.field public static final enum PHOTO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

.field public static final enum VIDEO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    const-string/jumbo v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->PHOTO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->VIDEO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    new-instance v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->NONE:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    sget-object v1, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->PHOTO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->VIDEO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->NONE:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->$VALUES:[Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->$VALUES:[Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    return-object v0
.end method

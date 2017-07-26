.class public final enum Lcom/naver/glink/android/sdk/api/GlinkError$Status;
.super Ljava/lang/Enum;
.source "GlinkError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GlinkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/api/GlinkError$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum APPLICATION:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum BAD_REQUEST:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum CONFLICT:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum FORBIDDEN:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum NOT_FOUND:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum OK:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum OPEN_API_ERROR:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum SERVICE:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

.field public static final enum UNAUTHORIZED:Lcom/naver/glink/android/sdk/api/GlinkError$Status;


# instance fields
.field final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "OPEN_API_ERROR"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->OPEN_API_ERROR:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "OK"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v5, v2}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->OK:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "BAD_REQUEST"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v6, v2}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->BAD_REQUEST:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "UNAUTHORIZED"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v7, v2}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->UNAUTHORIZED:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "FORBIDDEN"

    const/16 v2, 0x193

    invoke-direct {v0, v1, v8, v2}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->FORBIDDEN:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "NOT_FOUND"

    const/4 v2, 0x5

    const/16 v3, 0x194

    invoke-direct {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->NOT_FOUND:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "CONFLICT"

    const/4 v2, 0x6

    const/16 v3, 0x199

    invoke-direct {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->CONFLICT:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "INTERNAL_SERVER_ERROR"

    const/4 v2, 0x7

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->INTERNAL_SERVER_ERROR:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "SERVICE"

    const/16 v2, 0x8

    const/16 v3, 0x1f7

    invoke-direct {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->SERVICE:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const-string/jumbo v1, "APPLICATION"

    const/16 v2, 0x9

    const/16 v3, 0x270f

    invoke-direct {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->APPLICATION:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->OPEN_API_ERROR:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->OK:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->BAD_REQUEST:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->UNAUTHORIZED:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->FORBIDDEN:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->NOT_FOUND:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->CONFLICT:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->INTERNAL_SERVER_ERROR:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->SERVICE:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->APPLICATION:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->$VALUES:[Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->code:I

    return-void
.end method

.method static by(I)Lcom/naver/glink/android/sdk/api/GlinkError$Status;
    .locals 5

    invoke-static {}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->values()[Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->code:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/GlinkError$Status;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/api/GlinkError$Status;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->$VALUES:[Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/api/GlinkError$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    return-object v0
.end method

.class public abstract enum Lcom/naver/api/util/Type;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/api/util/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/api/util/Type;

.field public static final enum FILE:Lcom/naver/api/util/Type;

.field public static final enum KEY:Lcom/naver/api/util/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/naver/api/util/Type$1;

    const-string/jumbo v1, "KEY"

    invoke-direct {v0, v1, v2}, Lcom/naver/api/util/Type$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/api/util/Type;->KEY:Lcom/naver/api/util/Type;

    new-instance v0, Lcom/naver/api/util/Type$2;

    const-string/jumbo v1, "FILE"

    invoke-direct {v0, v1, v3}, Lcom/naver/api/util/Type$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/api/util/Type;->FILE:Lcom/naver/api/util/Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/naver/api/util/Type;

    sget-object v1, Lcom/naver/api/util/Type;->KEY:Lcom/naver/api/util/Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/api/util/Type;->FILE:Lcom/naver/api/util/Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/naver/api/util/Type;->$VALUES:[Lcom/naver/api/util/Type;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/naver/api/util/Type$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/api/util/Type;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/api/util/Type;
    .locals 1

    const-class v0, Lcom/naver/api/util/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/api/util/Type;

    return-object v0
.end method

.method public static values()[Lcom/naver/api/util/Type;
    .locals 1

    sget-object v0, Lcom/naver/api/util/Type;->$VALUES:[Lcom/naver/api/util/Type;

    invoke-virtual {v0}, [Lcom/naver/api/util/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/api/util/Type;

    return-object v0
.end method


# virtual methods
.method public abstract getMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

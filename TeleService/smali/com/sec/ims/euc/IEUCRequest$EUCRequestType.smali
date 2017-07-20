.class public final enum Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;
.super Ljava/lang/Enum;
.source "IEUCRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/euc/IEUCRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EUCRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

.field public static final enum PERSISTENT:Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

.field public static final enum VOLATILE:Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    const-string/jumbo v1, "VOLATILE"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;->VOLATILE:Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    new-instance v0, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    const-string/jumbo v1, "PERSISTENT"

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;->PERSISTENT:Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    sget-object v1, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;->VOLATILE:Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;->PERSISTENT:Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;->$VALUES:[Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;
    .locals 1

    const-class v0, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;
    .locals 1

    sget-object v0, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;->$VALUES:[Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    return-object v0
.end method

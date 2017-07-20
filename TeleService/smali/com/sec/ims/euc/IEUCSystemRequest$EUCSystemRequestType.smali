.class public final enum Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;
.super Ljava/lang/Enum;
.source "IEUCSystemRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/euc/IEUCSystemRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EUCSystemRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

.field public static final enum RECONFIGURE:Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    const-string/jumbo v1, "RECONFIGURE"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;->RECONFIGURE:Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    sget-object v1, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;->RECONFIGURE:Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;->$VALUES:[Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;
    .locals 1

    const-class v0, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;
    .locals 1

    sget-object v0, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;->$VALUES:[Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    return-object v0
.end method

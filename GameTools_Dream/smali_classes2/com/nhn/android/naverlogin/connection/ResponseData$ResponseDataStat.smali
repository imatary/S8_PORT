.class public final enum Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;
.super Ljava/lang/Enum;
.source "ResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nhn/android/naverlogin/connection/ResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseDataStat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUSY:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field public static final enum CANCEL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field public static final enum CONNECTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field public static final enum CONNECTION_TIMEOUT:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field private static final synthetic ENUM$VALUES:[Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field public static final enum EXCEPTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field public static final enum FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field public static final enum NO_PEER_CERTIFICATE:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field public static final enum SUCCESS:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field public static final enum URL_ERROR:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;


# instance fields
.field private stat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "SUCCESS"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->SUCCESS:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v1, "BUSY"

    const-string/jumbo v2, "BUSY"

    const-string/jumbo v3, "BUSY"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->BUSY:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v1, "CANCEL"

    const-string/jumbo v2, "CANCEL"

    const-string/jumbo v3, "CANCEL"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CANCEL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v1, "URL_ERROR"

    const-string/jumbo v2, "URL_ERROR"

    const-string/jumbo v3, "URL_ERROR"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->URL_ERROR:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    const-string/jumbo v2, "CONNECTION_TIMEOUT"

    const-string/jumbo v3, "CONNECTION_TIMEOUT"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CONNECTION_TIMEOUT:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v1, "CONNECTION_FAIL"

    const/4 v2, 0x5

    const-string/jumbo v3, "CONNECTION_FAIL"

    const-string/jumbo v4, "CONNECTION_FAIL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CONNECTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v1, "EXCEPTION_FAIL"

    const/4 v2, 0x6

    const-string/jumbo v3, "EXCEPTION_FAIL"

    const-string/jumbo v4, "EXCEPTION_FAIL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->EXCEPTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v1, "NO_PEER_CERTIFICATE"

    const/4 v2, 0x7

    const-string/jumbo v3, "NO_PEER_CERTIFICATE"

    const-string/jumbo v4, "NO_PEER_CERTIFICATE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->NO_PEER_CERTIFICATE:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v1, "FAIL"

    const/16 v2, 0x8

    const-string/jumbo v3, "FAIL"

    const-string/jumbo v4, "FAIL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    sget-object v1, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->SUCCESS:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->BUSY:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CANCEL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->URL_ERROR:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CONNECTION_TIMEOUT:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CONNECTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->EXCEPTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->NO_PEER_CERTIFICATE:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->stat:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;
    .locals 1

    const-class v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    return-object v0
.end method

.method public static values()[Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    array-length v1, v0

    new-array v2, v1, [Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->stat:Ljava/lang/String;

    return-object v0
.end method

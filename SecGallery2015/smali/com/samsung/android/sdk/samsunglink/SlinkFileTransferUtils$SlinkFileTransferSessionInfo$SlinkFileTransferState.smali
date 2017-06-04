.class public final enum Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;
.super Ljava/lang/Enum;
.source "SlinkFileTransferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlinkFileTransferState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELLED:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

.field public static final enum COMPLETE:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

.field public static final enum ERROR:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

.field public static final enum IN_PROGRESS:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

.field public static final enum PENDING:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->PENDING:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    const-string/jumbo v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->IN_PROGRESS:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->COMPLETE:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->ERROR:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    const-string/jumbo v1, "CANCELLED"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->CANCELLED:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->PENDING:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->IN_PROGRESS:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->COMPLETE:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->ERROR:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->CANCELLED:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

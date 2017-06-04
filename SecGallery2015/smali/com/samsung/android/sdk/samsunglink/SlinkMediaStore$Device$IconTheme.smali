.class public final enum Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;
.super Ljava/lang/Enum;
.source "SlinkMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconTheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DARK:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

.field public static final enum LIGHT:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    const-string/jumbo v1, "DARK"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;->DARK:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    const-string/jumbo v1, "LIGHT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;->LIGHT:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;->DARK:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;->LIGHT:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

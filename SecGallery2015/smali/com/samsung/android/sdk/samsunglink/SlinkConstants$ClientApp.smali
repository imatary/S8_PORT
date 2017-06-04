.class public final enum Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;
.super Ljava/lang/Enum;
.source "SlinkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientApp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

.field public static final enum GALLERY_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

.field public static final enum MUSIC_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

.field public static final enum NONE:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

.field public static final enum SLINK_PLATFORM_SAMPLE_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

.field public static final enum SLINK_UI_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

.field public static final enum VIDEO_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    const-string/jumbo v1, "SLINK_UI_APP"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->SLINK_UI_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    const-string/jumbo v1, "GALLERY_APP"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->GALLERY_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    const-string/jumbo v1, "MUSIC_APP"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->MUSIC_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    const-string/jumbo v1, "VIDEO_APP"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->VIDEO_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    const-string/jumbo v1, "SLINK_PLATFORM_SAMPLE_APP"

    const/16 v2, 0x802

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->SLINK_PLATFORM_SAMPLE_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->NONE:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->SLINK_UI_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->GALLERY_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->MUSIC_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->VIDEO_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->SLINK_PLATFORM_SAMPLE_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->NONE:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->value:I

    return v0
.end method

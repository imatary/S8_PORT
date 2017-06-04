.class public final enum Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;
.super Ljava/lang/Enum;
.source "DCStateLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoggingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

.field public static final enum ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

.field public static final enum EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    const-string/jumbo v1, "ENTER"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    const-string/jumbo v1, "EXIT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;
    .locals 1

    const-class v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-virtual {v0}, [Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    return-object v0
.end method

.class final enum Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;
.super Ljava/lang/Enum;
.source "RegisterUSSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/additionalservice/RegisterUSSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EditClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

.field public static final enum CANNOT_SELECT:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

.field public static final enum SERVICE_NAME:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

.field public static final enum USSD_CODE:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    const-string/jumbo v1, "SERVICE_NAME"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->SERVICE_NAME:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    new-instance v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    const-string/jumbo v1, "USSD_CODE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->USSD_CODE:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    new-instance v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    const-string/jumbo v1, "CANNOT_SELECT"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->CANNOT_SELECT:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->SERVICE_NAME:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->USSD_CODE:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->CANNOT_SELECT:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->$VALUES:[Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;
    .locals 1

    const-class v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;
    .locals 1

    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->$VALUES:[Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    return-object v0
.end method

.class public final enum Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;
.super Ljava/lang/Enum;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

.field public static final enum IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

.field public static final enum OFFHOOK:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

.field public static final enum RINGING:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    new-instance v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    const-string/jumbo v1, "RINGING"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->RINGING:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    new-instance v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    const-string/jumbo v1, "OFFHOOK"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->OFFHOOK:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    sget-object v1, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->RINGING:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->OFFHOOK:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->$VALUES:[Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;
    .locals 1

    const-class v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;
    .locals 1

    sget-object v0, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->$VALUES:[Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    return-object v0
.end method

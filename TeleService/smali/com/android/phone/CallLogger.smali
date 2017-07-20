.class Lcom/android/phone/CallLogger;
.super Ljava/lang/Object;
.source "CallLogger.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mCallLog:Lcom/android/phone/common/CallLogAsync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/CallLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallLogger;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/common/CallLogAsync;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    iput-object p2, p0, Lcom/android/phone/CallLogger;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    return-void
.end method


# virtual methods
.method public logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 0

    return-void
.end method

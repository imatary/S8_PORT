.class Lcom/android/phone/PhoneUtils$FgRingCalls;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FgRingCalls"
.end annotation


# instance fields
.field private fgCall:Lcom/android/internal/telephony/Call;

.field private ringing:Lcom/android/internal/telephony/Call;


# direct methods
.method static synthetic -get0(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneUtils$FgRingCalls;->fgCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneUtils$FgRingCalls;->ringing:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/PhoneUtils$FgRingCalls;->fgCall:Lcom/android/internal/telephony/Call;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$FgRingCalls;->ringing:Lcom/android/internal/telephony/Call;

    return-void
.end method

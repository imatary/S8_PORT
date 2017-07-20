.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$5;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkOperators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$5;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$5;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap20(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    return-void
.end method

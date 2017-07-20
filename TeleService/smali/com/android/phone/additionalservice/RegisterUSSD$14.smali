.class Lcom/android/phone/additionalservice/RegisterUSSD$14;
.super Ljava/lang/Object;
.source "RegisterUSSD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterUSSD;->saveRegisterUSSD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/additionalservice/RegisterUSSD;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$14;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD$14;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->USSD_CODE:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    invoke-static {v0, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-wrap0(Lcom/android/phone/additionalservice/RegisterUSSD;Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;)V

    return-void
.end method

.class Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;
.super Ljava/lang/Object;
.source "RoamingAutoDialMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RoamingAutoDialMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OkClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAutoDialMainActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/RoamingAutoDialMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;->this$0:Lcom/android/phone/RoamingAutoDialMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/RoamingAutoDialMainActivity;Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;-><init>(Lcom/android/phone/RoamingAutoDialMainActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;->this$0:Lcom/android/phone/RoamingAutoDialMainActivity;

    invoke-virtual {v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->finish()V

    return-void
.end method

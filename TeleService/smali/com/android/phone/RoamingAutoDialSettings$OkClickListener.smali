.class Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;
.super Ljava/lang/Object;
.source "RoamingAutoDialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RoamingAutoDialSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OkClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAutoDialSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/RoamingAutoDialSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/RoamingAutoDialSettings;Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;-><init>(Lcom/android/phone/RoamingAutoDialSettings;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    invoke-virtual {v0}, Lcom/android/phone/RoamingAutoDialSettings;->finish()V

    return-void
.end method

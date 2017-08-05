.class Lcom/sec/android/app/camera/setting/SwitchListPreference$1;
.super Ljava/lang/Object;
.source "SwitchListPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/SwitchListPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SwitchListPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/SwitchListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference$1;->this$0:Lcom/sec/android/app/camera/setting/SwitchListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference$1;->this$0:Lcom/sec/android/app/camera/setting/SwitchListPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->access$000(Lcom/sec/android/app/camera/setting/SwitchListPreference;Ljava/lang/Object;)Z

    return-void
.end method

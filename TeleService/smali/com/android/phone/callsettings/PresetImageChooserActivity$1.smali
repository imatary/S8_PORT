.class Lcom/android/phone/callsettings/PresetImageChooserActivity$1;
.super Ljava/lang/Object;
.source "PresetImageChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PresetImageChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImageChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PresetImageChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity$1;->this$0:Lcom/android/phone/callsettings/PresetImageChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity$1;->this$0:Lcom/android/phone/callsettings/PresetImageChooserActivity;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->finish()V

    return-void
.end method

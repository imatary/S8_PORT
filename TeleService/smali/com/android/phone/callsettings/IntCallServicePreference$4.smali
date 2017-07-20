.class Lcom/android/phone/callsettings/IntCallServicePreference$4;
.super Ljava/lang/Object;
.source "IntCallServicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IntCallServicePreference;->setInitValueAndLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IntCallServicePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference$4;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$4;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-static {v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->-wrap1(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$4;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v2, "ICPF"

    const-string/jumbo v3, "Manual"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

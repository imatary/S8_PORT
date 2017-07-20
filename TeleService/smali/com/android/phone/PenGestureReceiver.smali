.class public Lcom/android/phone/PenGestureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PenGestureReceiver.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isInCallTopActivity(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string/jumbo v3, "PenGestureReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInCallTopActivity()... topActivity.getClassName() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.incallui.InCallActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PenGestureReceiver"

    const-string/jumbo v4, "InCallActivity is the Top activity"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v6

    :cond_0
    return v7
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32

    const-string/jumbo v29, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v29, "support_twophone"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTwoPhoneRegistered()Z

    move-result v29

    if-eqz v29, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v29

    sget-object v30, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_2

    return-void

    :cond_1
    return-void

    :catch_0
    move-exception v12

    return-void

    :cond_2
    const-string/jumbo v29, "PenGestureReceiver"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "onReceive action "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    const-string/jumbo v29, "com.samsung.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string/jumbo v29, "com.samsung.pen.INSERT"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string/jumbo v29, "com.samsung.intent.spengesture.DOUBLE_TAB"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string/jumbo v29, "com.samsung.phone.MEMO_OPEN"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string/jumbo v30, "com.sec.feature.spen_usp"

    invoke-virtual/range {v29 .. v30}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    const/16 v21, 0x1

    const-string/jumbo v29, "penInsert"

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    const-string/jumbo v29, "com.samsung.pen.INSERT"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    if-eqz v23, :cond_8

    :cond_4
    :goto_0
    if-eqz v20, :cond_7

    if-eqz v21, :cond_7

    const-string/jumbo v29, "isFactoryMode"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/android/phone/PenGestureReceiver;->isInCallTopActivity(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v29

    if-nez v29, :cond_5

    :cond_5
    if-eqz v23, :cond_6

    const-string/jumbo v29, "com.samsung.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string/jumbo v29, "com.samsung.intent.spengesture.DOUBLE_TAB"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string/jumbo v29, "com.samsung.phone.MEMO_OPEN"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    :cond_6
    if-eqz v18, :cond_a

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "pen_detachment_option"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_9

    const/16 v29, 0x2

    move/from16 v0, v22

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    :cond_9
    const/16 v21, 0x0

    goto :goto_0

    :cond_a
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v9

    const/16 v17, 0x0

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v14, v0, :cond_e

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v8, v1, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v16

    const-string/jumbo v29, "support_twophone"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTwoPhoneRegistered()Z

    move-result v29

    if-eqz v29, :cond_b

    if-eqz v8, :cond_b

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->isActiveTwoPhone(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    :cond_b
    if-eqz v16, :cond_d

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v14, :cond_c

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    const/16 v30, 0x0

    move/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_c
    const-string/jumbo v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_d
    const-string/jumbo v29, "PenGestureReceiver"

    const-string/jumbo v30, "onReceive - ci is null"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    const-string/jumbo v29, "PenGestureReceiver"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "open quick note in call,  action "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v29, "com.diotek.mini_penmemo"

    const-string/jumbo v30, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v29, Landroid/content/Intent;

    const-string/jumbo v30, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const-string/jumbo v29, "phonenumbers"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v29, "support_twophone"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTwoPhoneRegistered()Z

    move-result v29

    if-eqz v29, :cond_f

    const-string/jumbo v30, "TwoPhoneDialOption"

    if-eqz v17, :cond_11

    const-string/jumbo v29, "twophone"

    :goto_4
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v24, Landroid/content/ComponentName;

    const-string/jumbo v29, "com.samsung.android.snote"

    const-string/jumbo v30, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v29, Landroid/content/Intent;

    const-string/jumbo v30, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v25

    const-string/jumbo v29, "phonenumbers"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v29, "support_twophone"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTwoPhoneRegistered()Z

    move-result v29

    if-eqz v29, :cond_10

    const-string/jumbo v30, "TwoPhoneDialOption"

    if-eqz v17, :cond_12

    const-string/jumbo v29, "twophone"

    :goto_5
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    const-string/jumbo v29, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v27

    const/16 v26, 0x0

    :try_start_1
    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    :goto_6
    if-nez v26, :cond_7

    const-string/jumbo v29, "PenGestureReceiver"

    const-string/jumbo v30, "QuickMemo StartService failed"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v29, "android.intent.action.QUICKMEMO_LAUNCH"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v29, "phonenumbers"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v29, "onephone"

    goto/16 :goto_4

    :cond_12
    const-string/jumbo v29, "onephone"

    goto :goto_5

    :catch_1
    move-exception v11

    const-string/jumbo v29, "PenGestureReceiver"

    const-string/jumbo v30, "QuickMemo StartService catch exception"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

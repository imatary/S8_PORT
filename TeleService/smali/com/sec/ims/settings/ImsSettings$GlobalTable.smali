.class public final Lcom/sec/ims/settings/ImsSettings$GlobalTable;
.super Ljava/lang/Object;
.source "ImsSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final mTableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.sec.ims.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mnoname"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mccmnc"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "network"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ims_enabled"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_local_config_server"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_custom_config_server_url"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_model_name"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_auto_config_pdn"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_network_type"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_disable_under_upsm"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "services"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "http_username"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "http_password"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xcap_root_uri"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "agg_proxy_ip"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "auth_proxy_ip"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "auth_proxy_port"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xdm_user_agent"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "apn_selection"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xcap_root_uri_pref"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xdm_user_id_domain"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "bsf_ip"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "bsf_port"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "enable_gba"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "dm_app_id"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "dm_user_disp_name"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "voice_domain_pref_eutran"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "voice_domain_pref_utran"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "support_vowifi"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_control_pref"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_domain_setting"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_format"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_write_uicc"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "t_lte_911_fail"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "max_adhoc_group_size"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pip"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "enable_ciq"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "enable_hasati"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "show_regi_info_in_sec_settings"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "show_volte_regi_icon"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "volte_regi_icon_id"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "show_vowifi_regi_icon"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vowifi_regi_icon_id"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vowifi_operator_label"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vowifi_operator_label_ongoing"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vowifi_subtext_on_lockscreen"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "remove_icon_nosvc"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_callwaiting_by_network"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_callbarring_by_network"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_ft_chunk_size"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_ish_chunk_size"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "msrp_cema"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pager_mode_size_limit"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "closed_group_chat"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "conf_subscribe_enabled"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "fthttp_trust_all_certs"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ft_cancel_ims_deregistration"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ft_cancel_memory_full"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ft_hide_download_file"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ft_fallback_all_fail"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ft_delete_temp_file"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "support_chat_on_default_mms_app"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "support_rcs_interworking_function"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_im_include_declined_user"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_im_include_subject_header"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ussd_domain_setting"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "emergency_domain_setting"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_csfb_with_imserror"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "volte_domestic_default_enabled"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "volte_international_default_enabled"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vowifi_need_location_menu"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_support_tls"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_select_mode"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_cb_select_mode"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_select_ip_version"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_support_multi_dns"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_support_retry"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_support_media_type"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_support_cp_element"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_support_ss_element"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_support_simservs_retry"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_disconnect_xcap_pdn"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_cf_busy_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_cf_not_reachable_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_cf_no_answer_ruleId"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_cf_no_replytimer_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_cf_not_logged_in_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_cf_unconditional_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_ocb_unconditional_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_ocb_international_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_ocb_international_ex_home_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_icb_unconditional_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_icb_roaming_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ss_icb_anonymous_ruleid"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "srvcc_version"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "enable_group_chat_list_retrieve"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "enable_ft_auto_resumable"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "all_csfb_error_code_list"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "voice_csfb_error_code_list"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_csfb_error_code_list"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "e911_csfb_error_code_list"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "iwlan_pani_format"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "user_agent"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "legacy_latching"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rcs_groupchat_auto_rejoin"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "support_configserver"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

friz_ai_architecture = {
  tiers = {
    {
      name = "AI Explorer",
      cost = "Free",
      features = {
        core = {
          "Basic AI-driven analytics dashboard",
          "1 pre-trained AI Bot for customer interaction",
          "Basic eCommerce integration",
          "AI-driven insights for limited data sets"
        },
        support = "Email, Community support",
        ideal_for = "Small businesses or startups taking their first step into AI-driven business solutions."
      }
    },
    {
      name = "AI Starter",
      cost = "$19/month",
      features = {
        core = {
          "AI-driven real-time analytics dashboard",
          "2 pre-trained AI Bots for customer service",
          "eCommerce platform integration",
          "Automated reporting and insights"
        },
        advanced = {
          "Customizable AI chatbot frameworks",
          "Basic AI predictive modeling for sales",
          "Access to AI plug-in marketplace",
          "AI-driven content generation for marketing"
        },
        ideal_for = "Businesses looking to leverage AI for enhanced customer service and data insights."
      }
    },
    {
      name = "AI Growth",
      cost = "$49/month",
      features = {
        core = {
          "Enhanced predictive analytics for sales",
          "5 specialized AI Bots for customer engagement",
          "Marketing automation with AI insights",
          "CRM integration with AI-enhanced leads scoring"
        },
        advanced = {
          "AI optimization for conversion rates",
          "Advanced AI-powered SEO and content strategy tools",
          "Dynamic pricing powered by machine learning",
          "AI sentiment analysis for customer feedback"
        },
        ideal_for = "Growing businesses aiming to scale their operations with AI-driven marketing and sales tools."
      }
    },
    {
      name = "AI Enterprise",
      cost = "$99/month",
      features = {
        core = {
          "Custom AI Bot development platform",
          "Comprehensive AI suite for operational intelligence",
          "Full CRM and ERP system AI integration",
          "Multi-channel customer interaction analysis"
        },
        advanced = {
          "Deep learning analytics for business intelligence",
          "Predictive inventory & SCM using AI forecasting",
          "AI-driven fraud detection with real-time prevention",
          "AI regulatory compliance and risk assessment tools"
        },
        ideal_for = "Enterprises needing a comprehensive AI suite for advanced operational intelligence and analytics."
      }
    },
    {
      name = "AI Premier",
      cost = "Starting at $499/month",
      features = {
        core = {
          "Bespoke AI solution development",
          "Personalized AI customer experience platform",
          "High-volume data processing with AI optimization",
          "24/7 premium support and AI system monitoring"
        },
        advanced = {
          "Personalized AI-powered customer journey mapping",
          "Enterprise-grade AI scalability solutions",
          "Access to emerging AI technologies and research",
          "Strategic partnerships in AI development and deployment"
        },
        ideal_for = "Large businesses or enterprises requiring tailored, high-end AI solutions with premium support."
      }
    },
    {
      name = "AI Innovator",
      cost = "Starting at $999/month",
      features = {
        core = {
          "Quantum AI capabilities for advanced problem-solving",
          "Fully autonomous AI for business process automation",
          "Custom-built AI algorithms for unique business logic",
          "AI-driven strategic business planning tools"
        },
        advanced = {
          "On-demand AI model training with proprietary datasets",
          "Strategic AI simulations for market and decision analysis",
          "Elite team of AI researchers dedicated to client projects",
          "Global AI integration for international business operations"
        },
        ideal_for = "Industry-leading businesses and innovators looking to leverage cutting-edge AI for strategic advantage and global operations."
      }
    }
  }
}

-- Function to retrieve the details of a tier by name
function getTierDetails(tierName)
  for _, tier in ipairs(friz_ai_architecture.tiers) do
    if tier.name == tierName then
      return tier
    end
  end
  return nil -- Tier not found
end

-- Example of retrieving details for a tier
local tier_details = getTierDetails("AI Innovator")
if tier_details then
  print("Tier: " .. tier_details.name)
  print("Cost: " .. tier_details.cost)
  print("Core Features:")
  for _, feature in ipairs(tier_details.features.core) do
    print("- " .. feature)
  end
  -- Advanced features and other properties can be printed in a similar way
end
